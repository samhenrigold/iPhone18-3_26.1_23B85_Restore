void sub_188FC8FFC(uint64_t a1, uint64_t a2)
{
  sub_188C85D28(a2, v12);
  v3 = v13;
  if (v13)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v12, v13);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x1EEE9AC00](v4);
    v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_18A4A86A8();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_opt_self() identifierWithAction:a1 propertyList:v9];
  swift_unknownObjectRelease();
  sub_188FC87DC(v10, 2, v11);
}

void __swiftcall _UIMenuBuilder.init()(_UIMenuBuilder *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id UIMenuBuilder.command(for:propertyList:)(uint64_t a1, uint64_t a2)
{
  sub_188C85D28(a2, v14);
  v5 = v15;
  if (v15)
  {
    v6 = __swift_project_boxed_opaque_existential_0(v14, v15);
    v7 = *(v5 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_18A4A86A8();
    (*(v7 + 8))(v10, v5);
    v4 = __swift_destroy_boxed_opaque_existential_0Tm(v14);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v2 commandForAction:a1 propertyList:{v11, v4}];
  swift_unknownObjectRelease();
  return v12;
}

void UIMenuBuilder.replace(command:propertyList:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_188C85D28(a2, v13);
  v5 = v14;
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v7 = *(v5 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_18A4A86A8();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
  }

  else
  {
    v11 = 0;
  }

  sub_188A34624(0, &qword_1ED48FC30, off_1E70EA170);
  v12 = sub_18A4A7518();
  [v3 replaceCommandForAction:a1 propertyList:v11 withElements:v12];
  swift_unknownObjectRelease();
}

double UIMenuBuilder.remove(command:propertyList:)(uint64_t a1, uint64_t a2)
{
  sub_188C85D28(a2, v13);
  v5 = v14;
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v7 = *(v5 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_18A4A86A8();
    (*(v7 + 8))(v10, v5);
    v4 = __swift_destroy_boxed_opaque_existential_0Tm(v13);
  }

  else
  {
    v11 = 0;
  }

  [v2 removeCommandForAction:a1 propertyList:{v11, v4}];
  swift_unknownObjectRelease();
  return result;
}

double sub_188FC9740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  sub_188A34624(0, &qword_1ED48FC30, off_1E70EA170);
  v9 = sub_18A4A7518();
  sub_188C85D28(a3, v19);
  v11 = v20;
  if (v20)
  {
    v12 = __swift_project_boxed_opaque_existential_0(v19, v20);
    v13 = *(v11 - 8);
    v14 = MEMORY[0x1EEE9AC00](v12);
    v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16, v14);
    v17 = sub_18A4A86A8();
    (*(v13 + 8))(v16, v11);
    v10 = __swift_destroy_boxed_opaque_existential_0Tm(v19);
  }

  else
  {
    v17 = 0;
  }

  [v5 *a5];

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_188FC9910(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_188FC9958(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Update.Identifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for Update.Identifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_188FC9A64()
{
  result = qword_1EA931310;
  if (!qword_1EA931310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA931310);
  }

  return result;
}

uint64_t sub_188FC9AB8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    sub_18A4A7F18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AF0, &qword_18A659590);
    sub_18A4A77D8();
    result = v14;
    v7 = v15;
    v9 = v16;
    v8 = v17;
    v10 = v18;
  }

  else
  {
    v8 = 0;
    v11 = -1;
    v12 = -1 << *(result + 32);
    v7 = result + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v11 = ~(-1 << v13);
    }

    v10 = v11 & *(result + 56);
  }

  *a4 = result;
  a4[1] = v7;
  a4[2] = v9;
  a4[3] = v8;
  a4[4] = v10;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

unint64_t sub_188FC9B88@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = sub_18A4A8338();
    v8 = 0;
    v9 = 0;
    v10 = 0;
    result = v7 | 0x8000000000000000;
  }

  else
  {
    v11 = -1;
    v12 = -1 << *(result + 32);
    v8 = result + 64;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v11 = ~(-1 << v13);
    }

    v10 = v11 & *(result + 64);
  }

  *a4 = result;
  a4[1] = v8;
  a4[2] = v9;
  a4[3] = 0;
  a4[4] = v10;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

void *sub_188FC9C20(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      v10 = a5;
      v11 = a4;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
      a4 = v11;
      a5 = v10;
    }

    v12 = a6(result, a2, a3, a4, a5);

    return v12;
  }

  return result;
}

void *sub_188FC9CC0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id, id), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v7 = result;
      v8 = a2;
      v9 = a6;
      v10 = a5;
      v11 = a4;
      bzero(result, 8 * a2);
      result = v7;
      a2 = v8;
      a4 = v11;
      a5 = v10;
      a6 = v9;
    }

    sub_188FCBA84(result, a2, a3, a4, a5, a6);
    v13 = v12;

    return v13;
  }

  return result;
}

void sub_188FC9D68(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t *a4)
{
  v9 = *a4;
  if ((*a4 & 0xC000000000000001) != 0)
  {
    if (v9 < 0)
    {
      v10 = *a4;
    }

    else
    {
      v10 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    v11 = sub_18A4A7F68();
    v13 = sub_18907C09C(v10, v11);
    sub_188FCB0C4(a1, a2, a3, 1, &v13);
    if (v4)
    {

      return;
    }
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *a4;
    sub_188FCB0C4(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v13);
  }

  *a4 = v13;
}

id sub_188FC9E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = v6;
  v4 = v2;

  return v6;
}

double sub_188FC9ED0@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  *a2 = *a1;
  a2[1] = v3;
  v4 = v2;

  return result;
}

uint64_t sub_188FC9F0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      if (a4 != 2)
      {
        return 0;
      }
    }

    else if (a4 != 3)
    {
      return 0;
    }

    sub_188A34624(0, &qword_1ED490230, 0x1E69E58C0);
    return sub_18A4A7C88() & 1;
  }

  if (!a2)
  {
    if (!a4)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (a4 != 1)
  {
    return 0;
  }

LABEL_9:
  v4 = sub_18A4A7288();
  v6 = v5;
  if (v4 == sub_18A4A7288() && v6 == v7)
  {

    return 1;
  }

  else
  {
    v9 = sub_18A4A86C8();

    return v9 & 1;
  }
}

uint64_t sub_188FCA030(uint64_t a1, void *a2)
{
  sub_188A34624(0, &qword_1ED490230, 0x1E69E58C0);
  v4 = a2[2];
  v5 = *(a1 + 16);
  v6 = v4;
  v7 = sub_18A4A7C88();

  if (v7 & 1) != 0 && (swift_beginAccess(), v8 = *(a1 + 24), swift_beginAccess(), v9 = a2[3], , , sub_188F8CA4C(v8, v9), v11 = v10, , , (v11) && (swift_beginAccess(), v12 = *(a1 + 32), swift_beginAccess(), v13 = a2[4], , , sub_188F8CA74(v12, v13), v15 = v14, , , (v15) && (swift_beginAccess(), v16 = *(a1 + 40), swift_beginAccess(), v17 = a2[5], , , sub_188F8CC1C(v16, v17), v19 = v18, , , (v19) && (swift_beginAccess(), v20 = *(a1 + 48), swift_beginAccess(), v21 = a2[6], , , sub_188F8CE30(v20, v21), v23 = v22, , , (v23))
  {
    swift_beginAccess();
    v24 = *(a1 + 56);
    swift_beginAccess();
    v25 = a2[7];

    sub_188F8CF8C(v24, v25);
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  return v27 & 1;
}

void sub_188FCA2B8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id, id))
{
  v20 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 56) + 8 * v13);
    v15 = *(*(a3 + 48) + 8 * v13);
    v16 = v14;
    LOBYTE(v14) = a4(v15, v16);

    if (v14)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_15:
        sub_18914D6E4(a1, a2, v20, a3);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_188FCA41C(uint64_t a1, uint64_t (*a2)(id, id), __n128 a3, uint64_t a4)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1E69E7CC8];
    v26 = MEMORY[0x1E69E7CC8];
    v6 = sub_18A4A8338();
    v7 = sub_18A4A8378();
    if (v7)
    {
      v8 = v7;
      sub_188A34624(0, &qword_1EA931300, off_1E70EB2B8);
      v9 = v8;
      do
      {
        v24 = v9;
        swift_dynamicCast();
        sub_188A34624(0, &unk_1EA9393B0, off_1E70E96E8);
        swift_dynamicCast();
        if (!v25)
        {
          break;
        }

        v10 = v25;
        v11 = v24;
        v12 = a2(v10, v11);

        if (v12)
        {
          v13 = v5[2];
          if (v5[3] <= v13)
          {
            sub_1890BE200(v13 + 1, 1);
          }

          v5 = v26;
          result = sub_18A4A7C78();
          v15 = v26 + 64;
          v16 = -1 << *(v26 + 32);
          v17 = result & ~v16;
          v18 = v17 >> 6;
          if (((-1 << v17) & ~*(v26 + 64 + 8 * (v17 >> 6))) != 0)
          {
            v19 = __clz(__rbit64((-1 << v17) & ~*(v26 + 64 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v20 = 0;
            v21 = (63 - v16) >> 6;
            do
            {
              if (++v18 == v21 && (v20 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v22 = v18 == v21;
              if (v18 == v21)
              {
                v18 = 0;
              }

              v20 |= v22;
              v23 = *(v15 + 8 * v18);
            }

            while (v23 == -1);
            v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          }

          *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
          *(*(v26 + 48) + 8 * v19) = v10;
          *(*(v26 + 56) + 8 * v19) = v11;
          ++*(v26 + 16);
        }

        else
        {
        }

        v9 = sub_18A4A8378();
      }

      while (v9);
    }

    sub_188E036A4(v6 | 0x8000000000000000);
  }

  else
  {
    v5 = sub_188FCBEF0(a1, a2, a4, sub_188FCA2B8, sub_188FCA2B8);
  }

  return v5;
}

id sub_188FCA6E4(void *a1, void *a2)
{
  v3 = v2;
  v33 = OBJC_IVAR____UIMenuBuilder__system;
  *&v2[OBJC_IVAR____UIMenuBuilder__system] = 0;
  *&v2[OBJC_IVAR____UIMenuBuilder__changeCountStorage] = 0;
  *&v2[OBJC_IVAR____UIMenuBuilder__actualChangeCountStorage] = 0;
  v34 = OBJC_IVAR____UIMenuBuilder__cachedKeyboardShortcutLeaves;
  *&v2[OBJC_IVAR____UIMenuBuilder__cachedKeyboardShortcutLeaves] = 0;
  v38 = 0;
  v39 = 0xE000000000000000;
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000045, 0x800000018A69AD90);
  v37 = [a2 identifier];
  _s3__C10IdentifierVMa_1(0);
  sub_18A4A82D8();

  v6 = [a2 identifier];
  v7 = sub_18A4A7288();
  v9 = v8;
  v35 = a1;
  if (v7 == sub_18A4A7288() && v9 == v10)
  {
  }

  else
  {
    v11 = sub_18A4A86C8();

    if ((v11 & 1) == 0)
    {
      sub_188FC2D3C(0, 0xE000000000000000);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0, &unk_18A64BA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64B710;
  *(inited + 32) = a2;
  v13 = objc_allocWithZone(_UIKeyCommandPrioritySet);
  v32 = a2;
  v14 = [v13 init];
  v15 = MEMORY[0x1E69E7CC0];
  v16 = sub_188E8EBA4(MEMORY[0x1E69E7CC0]);
  v17 = sub_188E8EBB8(v15);
  v18 = sub_188E8EBCC(v15);
  v19 = sub_188E8EBF4(v15);
  v20 = sub_188E8ECEC(v15);
  _s8AnalysisO11BookkeepingCMa();
  v21 = swift_allocObject();
  v21[2] = v14;
  v21[3] = v16;
  v21[4] = v17;
  v21[5] = v18;
  v21[6] = v19;
  v21[7] = v20;
  v22 = sub_188FC43FC(inited, 0, v21);
  v24 = v23;
  v26 = v25;
  v28 = v27;
  LODWORD(v19) = v27;

  swift_setDeallocating();
  swift_arrayDestroy();
  if (v19)
  {
    sub_188FCAB04(v22, v24, v26, v28);
    sub_188FC2D3C(0xD00000000000001ELL, 0x800000018A69ADE0);
  }

  v29 = *&v2[v33];
  *&v3[v33] = v35;
  v30 = v35;

  *&v3[OBJC_IVAR____UIMenuBuilder__currentBookkeeping] = v22;
  *&v3[v34] = 0;

  v36.receiver = v3;
  v36.super_class = _UIMenuBuilder;
  return objc_msgSendSuper2(&v36, sel_init);
}

id sub_188FCAA5C(void *a1, unsigned __int8 a2, id a3)
{
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      return [a3 _commandFor_];
    }

    else
    {
      v5 = a1;
      return a1;
    }
  }

  else if (a2)
  {
    return [a3 actionForIdentifier_];
  }

  else
  {
    return [a3 menuForIdentifier_];
  }
}

void sub_188FCAB04(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  switch(a4)
  {
    case 2:

      break;
    case 1:

      break;
    case 0:

      break;
  }
}

void sub_188FCAB84(uint64_t a1, void (*a2)(uint64_t *__return_ptr, id *), uint64_t a3, char a4, void *a5)
{
  v38 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v35 = a4;
      v12 = v11;
LABEL_11:
      v14 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
      v15 = *(*(a1 + 56) + v14);
      v37[0] = *(*(a1 + 48) + v14);
      v37[1] = v15;
      v16 = v37[0];
      v17 = v15;
      a2(v36, v37);

      v19 = v36[0];
      v18 = v36[1];
      v20 = *v38;
      v22 = sub_188B00858(v36[0]);
      v23 = v20[2];
      v24 = (v21 & 1) == 0;
      v25 = v23 + v24;
      if (__OFADD__(v23, v24))
      {
        break;
      }

      v26 = v21;
      if (v20[3] >= v25)
      {
        if (v35)
        {
          if (v21)
          {
            goto LABEL_22;
          }
        }

        else
        {
          sub_188FA4A44();
          if (v26)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
        sub_1890BE7F8(v25, v35 & 1);
        v27 = sub_188B00858(v19);
        if ((v26 & 1) != (v28 & 1))
        {
          goto LABEL_27;
        }

        v22 = v27;
        if (v26)
        {
LABEL_22:
          sub_18A4A8398();
          __break(1u);
LABEL_23:
          sub_188E036A4(a1);

          return;
        }
      }

      v29 = *v38;
      v29[(v22 >> 6) + 8] |= 1 << v22;
      *(v29[6] + 8 * v22) = v19;
      *(v29[7] + 8 * v22) = v18;
      v30 = v29[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_26;
      }

      v9 &= v9 - 1;
      v29[2] = v32;
      a4 = 1;
      v11 = v12;
      if (!v9)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v13 = v11;
    while (1)
    {
      v12 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
        goto LABEL_23;
      }

      v9 = *(v6 + 8 * v12);
      ++v13;
      if (v9)
      {
        v35 = a4;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  _s3__C10IdentifierVMa_1(0);
  sub_18A4A87A8();
  __break(1u);
}

void sub_188FCAE24(uint64_t a1, void (*a2)(uint64_t *__return_ptr, id *), uint64_t a3, char a4, void *a5)
{
  v38 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v35 = a4;
      v12 = v11;
LABEL_11:
      v14 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
      v15 = *(*(a1 + 56) + v14);
      v37[0] = *(*(a1 + 48) + v14);
      v37[1] = v15;
      v16 = v37[0];
      v17 = v15;
      a2(v36, v37);

      v19 = v36[0];
      v18 = v36[1];
      v20 = *v38;
      v22 = sub_188B00858(v36[0]);
      v23 = v20[2];
      v24 = (v21 & 1) == 0;
      v25 = v23 + v24;
      if (__OFADD__(v23, v24))
      {
        break;
      }

      v26 = v21;
      if (v20[3] >= v25)
      {
        if (v35)
        {
          if (v21)
          {
            goto LABEL_22;
          }
        }

        else
        {
          sub_188FA4758();
          if (v26)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
        sub_1890BE214(v25, v35 & 1);
        v27 = sub_188B00858(v19);
        if ((v26 & 1) != (v28 & 1))
        {
          goto LABEL_27;
        }

        v22 = v27;
        if (v26)
        {
LABEL_22:
          sub_18A4A8398();
          __break(1u);
LABEL_23:
          sub_188E036A4(a1);

          return;
        }
      }

      v29 = *v38;
      v29[(v22 >> 6) + 8] |= 1 << v22;
      *(v29[6] + 8 * v22) = v19;
      *(v29[7] + 8 * v22) = v18;
      v30 = v29[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_26;
      }

      v9 &= v9 - 1;
      v29[2] = v32;
      a4 = 1;
      v11 = v12;
      if (!v9)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v13 = v11;
    while (1)
    {
      v12 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
        goto LABEL_23;
      }

      v9 = *(v6 + 8 * v12);
      ++v13;
      if (v9)
      {
        v35 = a4;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  _s3__C10IdentifierVMa_0(0);
  sub_18A4A87A8();
  __break(1u);
}

void sub_188FCB0C4(unint64_t a1, unint64_t a2, unint64_t a3, char a4, void *a5)
{
  sub_188FC9B88(a1, a2, a3, &v41);
  v40 = v41;

  sub_18903808C(v8);
  if (!v9)
  {
LABEL_17:
    sub_188E036A4(v40);

    return;
  }

  v11 = v9;
  v12 = v10;
  v13 = *a5;
  v14 = sub_188E8B55C(v9);
  v17 = v13[2];
  v18 = (v15 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    goto LABEL_18;
  }

  v5 = v15;
  if (v13[3] >= v20)
  {
    goto LABEL_6;
  }

  sub_1890BE200(v20, a4 & 1);
  v14 = sub_188E8B55C(v11);
  if ((v5 & 1) != (v21 & 1))
  {
LABEL_5:
    sub_188A34624(0, &qword_1EA931300, off_1E70EB2B8);
    v14 = sub_18A4A87A8();
    __break(1u);
LABEL_6:
    if ((a4 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  for (; (v5 & 1) == 0; v14 = v39)
  {
    v22 = *a5;
    *(*a5 + 8 * (v14 >> 6) + 64) |= 1 << v14;
    *(v22[6] + 8 * v14) = v11;
    *(v22[7] + 8 * v14) = v12;
    v23 = v22[2];
    v19 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v19)
    {
      v22[2] = v24;
      sub_18903808C(v16);
      if (!v25)
      {
        goto LABEL_17;
      }

      v12 = v25;
      v11 = v26;
      v5 = 1;
      while (1)
      {
        v27 = *a5;
        v14 = sub_188E8B55C(v12);
        v30 = v27[2];
        v31 = (v28 & 1) == 0;
        v19 = __OFADD__(v30, v31);
        v32 = v30 + v31;
        if (v19)
        {
          break;
        }

        a4 = v28;
        if (v27[3] < v32)
        {
          sub_1890BE200(v32, 1);
          v14 = sub_188E8B55C(v12);
          if ((a4 & 1) != (v33 & 1))
          {
            goto LABEL_5;
          }
        }

        if (a4)
        {
          goto LABEL_21;
        }

        v34 = *a5;
        *(*a5 + 8 * (v14 >> 6) + 64) |= 1 << v14;
        *(v34[6] + 8 * v14) = v12;
        *(v34[7] + 8 * v14) = v11;
        v35 = v34[2];
        v19 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v19)
        {
          goto LABEL_19;
        }

        v34[2] = v36;
        sub_18903808C(v29);
        v12 = v37;
        v11 = v38;
        if (!v37)
        {
          goto LABEL_17;
        }
      }

LABEL_18:
      __break(1u);
    }

LABEL_19:
    __break(1u);
LABEL_20:
    v39 = v14;
    sub_188FA4744();
  }

LABEL_21:
  sub_18A4A8398();
  __break(1u);
}

void sub_188FCB36C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, id *), uint64_t a3, char a4, void *a5)
{
  v37 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v34 = a4;
      v12 = v11;
LABEL_11:
      v14 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
      v15 = *(*(a1 + 56) + v14);
      v36[0] = *(*(a1 + 48) + v14);
      v36[1] = v15;
      v16 = v36[0];

      a2(v35, v36);

      v18 = v35[0];
      v17 = v35[1];
      v19 = *v37;
      v21 = sub_188B00858(v35[0]);
      v22 = v19[2];
      v23 = (v20 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        break;
      }

      v25 = v20;
      if (v19[3] >= v24)
      {
        if (v34)
        {
          if (v20)
          {
            goto LABEL_22;
          }
        }

        else
        {
          sub_188FA476C();
          if (v25)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
        sub_1890BE228(v24, v34 & 1);
        v26 = sub_188B00858(v18);
        if ((v25 & 1) != (v27 & 1))
        {
          goto LABEL_27;
        }

        v21 = v26;
        if (v25)
        {
LABEL_22:
          sub_18A4A8398();
          __break(1u);
LABEL_23:
          sub_188E036A4(a1);

          return;
        }
      }

      v28 = *v37;
      v28[(v21 >> 6) + 8] |= 1 << v21;
      *(v28[6] + 8 * v21) = v18;
      *(v28[7] + 8 * v21) = v17;
      v29 = v28[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_26;
      }

      v9 &= v9 - 1;
      v28[2] = v31;
      a4 = 1;
      v11 = v12;
      if (!v9)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v13 = v11;
    while (1)
    {
      v12 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
        goto LABEL_23;
      }

      v9 = *(v6 + 8 * v12);
      ++v13;
      if (v9)
      {
        v34 = a4;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  _s3__C10IdentifierVMa_1(0);
  sub_18A4A87A8();
  __break(1u);
}

void sub_188FCB610(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void **), uint64_t a3, char a4, void *a5)
{
  v47 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v37 = v6;
  if (v9)
  {
    while (1)
    {
      v40 = a4;
      v12 = v11;
LABEL_11:
      v14 = __clz(__rbit64(v9)) | (v12 << 6);
      v15 = *(a1 + 48) + 16 * v14;
      v16 = *v15;
      LOBYTE(v15) = *(v15 + 8);
      v17 = *(*(a1 + 56) + 8 * v14);
      v44 = v16;
      v45 = v15;
      v46 = v17;
      v18 = v16;
      v19 = v17;
      a2(&v41, &v44);

      v20 = v41;
      v21 = v42;
      v22 = v43;
      v23 = *v47;
      v25 = sub_188E8B480(v41, v42);
      v26 = v23[2];
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        break;
      }

      v29 = v24;
      if (v23[3] >= v28)
      {
        if (v40)
        {
          if (v24)
          {
            goto LABEL_22;
          }
        }

        else
        {
          sub_188FA48D0();
          if (v29)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
        sub_1890BE4F0(v28, v40 & 1);
        v30 = sub_188E8B480(v20, v21);
        if ((v29 & 1) != (v31 & 1))
        {
          goto LABEL_27;
        }

        v25 = v30;
        if (v29)
        {
LABEL_22:
          sub_18A4A8398();
          __break(1u);
LABEL_23:
          sub_188E036A4(a1);

          return;
        }
      }

      v32 = *v47;
      v32[(v25 >> 6) + 8] |= 1 << v25;
      v33 = v32[6] + 16 * v25;
      *v33 = v20;
      *(v33 + 8) = v21;
      *(v32[7] + 8 * v25) = v22;
      v34 = v32[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_26;
      }

      v9 &= v9 - 1;
      v32[2] = v36;
      a4 = 1;
      v11 = v12;
      v6 = v37;
      if (!v9)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v13 = v11;
    while (1)
    {
      v12 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
        goto LABEL_23;
      }

      v9 = *(v6 + 8 * v12);
      ++v13;
      if (v9)
      {
        v40 = a4;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_18A4A87A8();
  __break(1u);
}

void sub_188FCB8DC(uint64_t a1, uint64_t (*a2)(id, id), uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 32);
  v10 = ((1 << v9) + 63) >> 6;
  if ((v9 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      sub_188FC9CC0(v13, v10, v8, a2, a3, a4);
      MEMORY[0x18CFEA5B0](v13, -1, -1);
      return;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v12 = v14 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v12, v11);
  sub_188FCBA84(v12, v10, v8, a2, a3, a4);
  if (v4)
  {
    swift_willThrow();
  }
}

void sub_188FCBA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id, id), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v24 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(*(a3 + 56) + 8 * v15);
    v17 = *(*(a3 + 48) + 8 * v15);
    v18 = v16;
    v19 = a4(v17, v18);

    if (v19)
    {
      *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
LABEL_15:
        a6(a1, a2, v24, a3);
        return;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_15;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_188FCBC00(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id, uint64_t), __n128 a5)
{
  v21 = 0;
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
    v15 = *(*(a3 + 56) + 8 * v14);
    v16 = *(*(a3 + 48) + 8 * v14);

    v17 = a4(v16, v15);

    if (v17)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_15:
        sub_18914D478(a1, a2, v21, a3);
        return;
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
      goto LABEL_15;
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
}

void sub_188FCBD70(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id, uint64_t, id))
{
  v24 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v27 = (v8 - 1) & v8;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(a3 + 48) + 16 * v13;
    v15 = *v14;
    v16 = v13;
    v17 = *(*(a3 + 56) + 8 * v13);
    v18 = *(v14 + 8);
    v19 = *v14;
    v20 = v17;
    LOBYTE(v15) = a4(v15, v18, v20);

    v8 = v27;
    if (v15)
    {
      *(a1 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
LABEL_15:
        sub_18914D1BC(a1, a2, v24, a3);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v27 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_188FCBEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = a1;
  v18[1] = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 32);
  v11 = ((1 << v10) + 63) >> 6;
  if ((v10 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v13 = v18 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v12);
    result = a4(v13, v11, v9, a2, a3);
    if (v5)
    {
      return swift_willThrow();
    }

    return result;
  }

  v16 = swift_slowAlloc();
  v17 = sub_188FC9C20(v16, v11, v9, a2, a3, a5);
  result = MEMORY[0x18CFEA5B0](v16, -1, -1);
  if (!v5)
  {
    return v17;
  }

  return result;
}

uint64_t sub_188FCC080(void *a1, void *a2)
{
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD00000000000001FLL, 0x800000018A69A950);
  v13 = [a1 identifier];
  _s3__C10IdentifierVMa_1(0);
  sub_18A4A82D8();

  MEMORY[0x18CFE22D0](0xD000000000000014, 0x800000018A69A970);
  v4 = [a1 description];
  v5 = sub_18A4A7288();
  v7 = v6;

  MEMORY[0x18CFE22D0](v5, v7);

  MEMORY[0x18CFE22D0](0xD000000000000015, 0x800000018A69A990);
  v8 = [a2 description];
  v9 = sub_18A4A7288();
  v11 = v10;

  MEMORY[0x18CFE22D0](v9, v11);

  MEMORY[0x18CFE22D0](0xD00000000000006FLL, 0x800000018A69A9B0);
  return 0;
}

uint64_t sub_188FCC22C(void *a1, void *a2)
{
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000021, 0x800000018A69A860);
  v13 = [a1 identifier];
  _s3__C10IdentifierVMa_0(0);
  sub_18A4A82D8();

  MEMORY[0x18CFE22D0](0xD000000000000016, 0x800000018A69A890);
  v4 = [a1 description];
  v5 = sub_18A4A7288();
  v7 = v6;

  MEMORY[0x18CFE22D0](v5, v7);

  MEMORY[0x18CFE22D0](0xD000000000000017, 0x800000018A69A8B0);
  v8 = [a2 description];
  v9 = sub_18A4A7288();
  v11 = v10;

  MEMORY[0x18CFE22D0](v9, v11);

  MEMORY[0x18CFE22D0](0xD000000000000075, 0x800000018A69A8D0);
  return 0;
}

uint64_t sub_188FCC3D4(void *a1, void *a2)
{
  *&v16 = 0;
  *(&v16 + 1) = 0xE000000000000000;
  sub_18A4A80E8();
  v18 = 0;
  v19 = 0xE000000000000000;
  MEMORY[0x18CFE22D0](0xD00000000000001ELL, 0x800000018A69A650);
  [a1 action];
  v4 = sub_18A4A2B88();
  MEMORY[0x18CFE22D0](v4);

  MEMORY[0x18CFE22D0](0xD000000000000010, 0x800000018A69A670);
  if ([a1 propertyList])
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A55538(&v15, &v16);
  }

  else
  {
    v17 = MEMORY[0x1E69E6158];
    *&v16 = 7104878;
    *(&v16 + 1) = 0xE300000000000000;
  }

  sub_18A4A82D8();
  v5 = __swift_destroy_boxed_opaque_existential_0Tm(&v16);
  MEMORY[0x18CFE22D0](0xD000000000000017, 0x800000018A69A690, v5);
  v6 = [a1 description];
  v7 = sub_18A4A7288();
  v9 = v8;

  MEMORY[0x18CFE22D0](v7, v9);

  MEMORY[0x18CFE22D0](0xD000000000000018, 0x800000018A69A6B0);
  v10 = [a2 description];
  v11 = sub_18A4A7288();
  v13 = v12;

  MEMORY[0x18CFE22D0](v11, v13);

  MEMORY[0x18CFE22D0](0xD0000000000000AFLL, 0x800000018A69A6D0);
  return v18;
}

uint64_t sub_188FCC600(void *a1, void *a2)
{
  v3 = 0x297974706D6528;
  swift_getObjectType();
  v4 = [a1 _keyboardShortcut];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 baseKeyCombination];

    v7 = [v6 _readableStringForModifierFlagsUsingWords_forHUD_];
    v8 = sub_18A4A7288();
    v10 = v9;
  }

  else
  {
    v10 = 0xE700000000000000;
    v8 = 0x297974706D6528;
  }

  v11 = [a1 _keyboardShortcut];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 baseKeyCombination];

    v14 = [v13 _readableStringForKeyEquivalentUsingWords_forHUD_isSingleCharacterOrKeySymbol_];
    v3 = sub_18A4A7288();
    v16 = v15;
  }

  else
  {
    v16 = 0xE700000000000000;
  }

  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD00000000000002DLL, 0x800000018A69A780);
  MEMORY[0x18CFE22D0](v8, v10);

  MEMORY[0x18CFE22D0](0x3A7475706E69202CLL, 0xE900000000000020);
  MEMORY[0x18CFE22D0](v3, v16);

  MEMORY[0x18CFE22D0](0xD000000000000021, 0x800000018A69A7B0);
  swift_getWitnessTable();
  sub_18A4A8698();
  MEMORY[0x18CFE22D0](0xD000000000000022, 0x800000018A69A7E0);
  swift_getObjectType();
  swift_getWitnessTable();
  sub_18A4A8698();
  MEMORY[0x18CFE22D0](0xD000000000000047, 0x800000018A69A810);
  return 0;
}

uint64_t sub_188FCC8B8(void *a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  v97 = a3;
  v5 = *(a3 + 24);
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;
  v98 = v5;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = *(*(v98 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v9)))));
      swift_beginAccess();
      v14 = a1[3];
      v15 = *(v14 + 16);
      v16 = v13;
      if (!v15)
      {
        break;
      }

      i = v16;
      v17 = sub_188B00858(v16);
      if ((v18 & 1) == 0)
      {
        break;
      }

      v19 = *(*(v14 + 56) + 8 * v17);
      swift_endAccess();
      swift_beginAccess();
      v20 = a2[3];
      v21 = *(v20 + 16);
      v22 = v19;
      if (!v21 || (v23 = sub_188B00858(i), (v24 & 1) == 0))
      {
        swift_endAccess();

LABEL_84:
        sub_188FC2D3C(0xD00000000000007BLL, 0x800000018A69A420);
      }

      v9 &= v9 - 1;
      v25 = *(*(v20 + 56) + 8 * v23);
      swift_endAccess();
      v26 = v25;
      v27 = sub_188FCC080(v22, v26);
      MEMORY[0x18CFE22D0](v27);

      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    swift_endAccess();
    goto LABEL_84;
  }

  while (1)
  {
LABEL_5:
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  swift_beginAccess();
  v28 = *(v97 + 32);
  v29 = v28 + 64;
  v30 = 1 << *(v28 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(v28 + 64);
  v33 = (v30 + 63) >> 6;
  v99 = *(v97 + 32);

  v34 = 0;
  if (v32)
  {
    while (1)
    {
      v35 = v34;
LABEL_21:
      v36 = *(*(v99 + 48) + ((v35 << 9) | (8 * __clz(__rbit64(v32)))));
      swift_beginAccess();
      v37 = a1[4];
      v38 = *(v37 + 16);
      v39 = v36;
      if (!v38)
      {
        break;
      }

      i = v39;
      v40 = sub_188B00858(v39);
      if ((v41 & 1) == 0)
      {
        break;
      }

      v42 = *(*(v37 + 56) + 8 * v40);
      swift_endAccess();
      swift_beginAccess();
      v43 = a2[4];
      v44 = *(v43 + 16);
      v45 = v42;
      if (!v44 || (v46 = sub_188B00858(i), (v47 & 1) == 0))
      {
        swift_endAccess();

LABEL_87:
        v95 = "is is a UIKit internal bug.";
        v96 = 0xD00000000000007FLL;
        goto LABEL_88;
      }

      v32 &= v32 - 1;
      v48 = *(*(v43 + 56) + 8 * v46);
      swift_endAccess();
      v49 = v48;
      v50 = sub_188FCC22C(v45, v49);
      MEMORY[0x18CFE22D0](v50);

      v34 = v35;
      if (!v32)
      {
        goto LABEL_18;
      }
    }

    swift_endAccess();
    goto LABEL_87;
  }

  while (1)
  {
LABEL_18:
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      goto LABEL_71;
    }

    if (v35 >= v33)
    {
      break;
    }

    v32 = *(v29 + 8 * v35);
    ++v34;
    if (v32)
    {
      goto LABEL_21;
    }
  }

  swift_beginAccess();
  v51 = *(v97 + 40);
  if ((v51 & 0xC000000000000001) != 0)
  {
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = sub_18A4A8338() | 0x8000000000000000;
  }

  else
  {
    v56 = -1 << *(v51 + 32);
    v53 = ~v56;
    v52 = v51 + 64;
    v57 = -v56;
    if (v57 < 64)
    {
      v58 = ~(-1 << v57);
    }

    else
    {
      v58 = -1;
    }

    v54 = v58 & *(v51 + 64);
    v55 = *(v97 + 40);
  }

  v59 = 0;
  v60 = (v53 + 64) >> 6;
  if ((v55 & 0x8000000000000000) != 0)
  {
    goto LABEL_40;
  }

LABEL_34:
  v61 = v59;
  v62 = v54;
  for (i = v59; !v62; ++v61)
  {
    i = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      goto LABEL_72;
    }

    if (i >= v60)
    {
      goto LABEL_58;
    }

    v62 = *(v52 + 8 * i);
  }

  v63 = (v62 - 1) & v62;
  v64 = *(*(v55 + 48) + ((i << 9) | (8 * __clz(__rbit64(v62)))));
  if (v64)
  {
    while (1)
    {
      swift_beginAccess();
      v66 = a1[5];
      if ((v66 & 0xC000000000000001) != 0)
      {
        v67 = v64;
        v68 = sub_18A4A8358();

        if (!v68)
        {
          goto LABEL_79;
        }

        sub_188A34624(0, &unk_1EA9393B0, off_1E70E96E8);
        swift_dynamicCast();
        v69 = v102;
        if (!v102)
        {
          goto LABEL_79;
        }
      }

      else if (!*(v66 + 16) || (v70 = sub_188E8B55C(v64), (v71 & 1) == 0) || (v69 = *(*(v66 + 56) + 8 * v70)) == 0)
      {
LABEL_79:
        swift_endAccess();
        goto LABEL_81;
      }

      swift_endAccess();
      swift_beginAccess();
      v72 = a2[5];
      if ((v72 & 0xC000000000000001) != 0)
      {
        v73 = v64;
        v74 = sub_18A4A8358();

        if (!v74)
        {
          goto LABEL_80;
        }

        sub_188A34624(0, &unk_1EA9393B0, off_1E70E96E8);
        swift_dynamicCast();
        v75 = v102;
        if (!v102)
        {
          goto LABEL_80;
        }
      }

      else if (!*(v72 + 16) || (v76 = sub_188E8B55C(v64), (v77 & 1) == 0) || (v75 = *(*(v72 + 56) + 8 * v76)) == 0)
      {
LABEL_80:
        swift_endAccess();

LABEL_81:
        v95 = "a UIKit internal bug.";
        v96 = 0xD000000000000081;
LABEL_88:
        sub_188FC2D3C(v96, v95 | 0x8000000000000000);
      }

      swift_endAccess();
      v78 = sub_188FCC3D4(v69, v75);
      MEMORY[0x18CFE22D0](v78);

      v59 = i;
      v54 = v63;
      if ((v55 & 0x8000000000000000) == 0)
      {
        goto LABEL_34;
      }

LABEL_40:
      v65 = sub_18A4A8388();
      if (v65)
      {
        v102 = v65;
        sub_188A34624(0, &qword_1EA931300, off_1E70EB2B8);
        swift_dynamicCast();
        v64 = v103;
        i = v59;
        v63 = v54;
        if (v103)
        {
          continue;
        }
      }

      break;
    }
  }

LABEL_58:
  sub_188E036A4(v55);
  v79 = [(_UIKeyCommandPrioritySet *)*(v97 + 16) allKeyCommands];
  sub_188A34624(0, &qword_1EA931248, off_1E70E9ED0);
  i = sub_18A4A7548();

  if (!(i >> 62))
  {
    v80 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v80)
    {
      goto LABEL_60;
    }

    goto LABEL_76;
  }

LABEL_75:
  v80 = sub_18A4A7F68();
  if (v80)
  {
LABEL_60:
    v81 = 0;
    while (1)
    {
      if ((i & 0xC000000000000001) != 0)
      {
        v82 = sub_188E4AA00(v81, i);
      }

      else
      {
        if (v81 >= *((i & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_74;
        }

        v82 = *(i + 8 * v81 + 32);
      }

      v83 = v82;
      v84 = v81 + 1;
      if (__OFADD__(v81, 1))
      {
        goto LABEL_73;
      }

      v85 = [(_UIKeyCommandPrioritySet *)a1[2] member:v82];
      if (!v85)
      {
        goto LABEL_78;
      }

      v86 = v85;
      v87 = [(_UIKeyCommandPrioritySet *)a2[2] member:v83];
      if (!v87)
      {
        break;
      }

      v88 = v87;
      v89 = v86;
      v90 = v88;
      v91 = sub_188FCC600(v89, v90);
      v93 = v92;

      MEMORY[0x18CFE22D0](v91, v93);

      ++v81;
      if (v84 == v80)
      {
        goto LABEL_76;
      }
    }

LABEL_78:
    v95 = ". This is a UIKit internal bug.";
    v96 = 0xD000000000000095;
    goto LABEL_88;
  }

LABEL_76:

  return 0;
}

uint64_t sub_188FCD164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char a8)
{
  v26 = 0;
  if (a8 == 1)
  {

    MEMORY[0x18CFE22D0](2618, 0xE200000000000000);
    v26 = a1;
    v9 = *(a5 + 16);
    if (v9)
    {
      v10 = (a5 + 48);
      do
      {
        v13 = *(v10 - 2);
        v12 = *(v10 - 1);
        v14 = *v10;
        if (v14 > 1)
        {
          if (v14 == 2)
          {
            sub_188FCD78C(v13, *(v10 - 1), 2u);
            v11 = sub_188FCC3D4(v13, v12);
          }

          else
          {
            swift_getObjectType();
            swift_getObjectType();
            sub_188FCD78C(v13, v12, 3u);
            v11 = sub_188FCC600(v13, v12);
          }
        }

        else
        {
          v15 = *(v10 - 1);
          if (*v10)
          {
            sub_188FCD78C(v13, v15, 1u);
            v11 = sub_188FCC22C(v13, v12);
          }

          else
          {
            sub_188FCD78C(v13, v15, 0);
            v11 = sub_188FCC080(v13, v12);
          }
        }

        v10 += 24;
        MEMORY[0x18CFE22D0](v11);
        sub_188FCD7D4(v13, v12, v14);

        --v9;
      }

      while (v9);
    }
  }

  else
  {
    if (a8 != 2)
    {
      sub_188FC2D3C(0xD00000000000005CLL, 0x800000018A69AA90);
    }

    MEMORY[0x18CFE22D0](2618, 0xE200000000000000);
    MEMORY[0x18CFE22D0](a3, a4);

    sub_18A4A80E8();

    MEMORY[0x18CFE22D0](a5, a6);
    MEMORY[0x18CFE22D0](0x656C6520726F6620, 0xEE00203A746E656DLL);
    v18 = [a7 description];
    v19 = sub_18A4A7288();
    v21 = v20;

    MEMORY[0x18CFE22D0](v19, v21);

    MEMORY[0x18CFE22D0](10, 0xE100000000000000);
    MEMORY[0x18CFE22D0](0x206C696E202D20, 0xE700000000000000);

    objc_opt_self();
    if (swift_dynamicCastObjCClass() && (a5 == 0x7475706E69 && a6 == 0xE500000000000000 || (sub_18A4A86C8() & 1) != 0))
    {
      MEMORY[0x18CFE22D0](0xD00000000000006BLL, 0x800000018A69AA20);
    }
  }

  return v26;
}

void sub_188FCD4B4(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  switch(a4)
  {
    case 2:

      v5 = a3;
      break;
    case 1:

      break;
    case 0:

      break;
  }
}

void sub_188FCD52C(void *a1, uint64_t a2)
{
  v4 = sub_18A4A4378();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;
  v17 = a2;

  MEMORY[0x18CFE22D0](0xD000000000000051, 0x800000018A69A3C0);
  v9 = v16;
  v8 = v17;
  sub_18A4A4368();

  v10 = sub_18A4A4358();
  v11 = sub_18A4A7978();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136446210;
    v14 = sub_1891D69C0(v9, v8, &v16);

    *(v12 + 4) = v14;
    _os_log_impl(&dword_188A29000, v10, v11, "%{public}s", v12, 0xCu);
    v15 = __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x18CFEA5B0](v13, -1, -1, v15);
    MEMORY[0x18CFEA5B0](v12, -1, -1);
  }

  else
  {
  }

  (*(v5 + 8))(v7, v4);
  _UIMenuBuilderError();
}

id sub_188FCD78C(id result, void *a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
    v4 = result;

    return a2;
  }

  return result;
}

void sub_188FCD7D4(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }
}

void sub_188FCD81C(uint64_t a1, id a2, uint64_t a3)
{
  v6 = [a2 menuForIdentifier_];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 children];
    sub_188A34624(0, &qword_1ED48FC30, off_1E70EA170);
    sub_18A4A7548();

    v9 = sub_18A4A7518();
    v10 = (*(a3 + 16))(a3, v9);

    sub_18A4A7548();

    v11 = sub_18A4A7518();

    v12 = [v7 menuByReplacingChildren_];

    [a2 replaceMenuForIdentifier:a1 withMenu:v12];
  }
}

uint64_t sub_188FCD9B4(uint64_t a1, unsigned int a2)
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

uint64_t sub_188FCD9FC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_188FCDA54()
{
  v1 = v0;
  v2 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  v32.receiver = v0;
  v32.super_class = _UITabBarGlassBackground;
  objc_msgSendSuper2(&v32, sel_layoutSubviews, v6);
  v9 = [(UIView *)v0 _typedStorage];
  sub_188A6852C(&v23);

  v19 = v25;
  v20 = v26;
  v21 = v27;
  v22 = v28;
  v17 = v23;
  v18 = v24;
  if (*(&v24 + 1))
  {
    sub_188A53994(&v17, &v29);
    sub_188ACE668(&v17);
    if (*(&v30 + 1))
    {
      return sub_188A3F5FC(&v29, &unk_1EA93C9A0, qword_18A6513A0);
    }
  }

  else
  {
    sub_188A3F5FC(&v17, &unk_1EA933EC0, &qword_18A65E090);
    v29 = 0u;
    v30 = 0u;
    v31 = 0;
  }

  sub_188A3F5FC(&v29, &unk_1EA93C9A0, qword_18A6513A0);
  if (qword_1ED48E920 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v2, qword_1ED48E930);
  sub_188B90950(v11, v4);
  [v1 _useAdaptiveGlass];
  sub_188B90950(v4, v8);
  v12 = sub_18A4A2F58();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A2F38();
  sub_188EA974C(v4);
  (*(v13 + 40))(v8, v15, v12);
  *(&v24 + 1) = type metadata accessor for _Glass(0);
  *&v25 = &protocol witness table for _Glass;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v23);
  _Glass.init(_:smoothness:)(v8, boxed_opaque_existential_0, 0.0);
  return UIView._background.setter(&v23);
}

void sub_188FCDE24(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for _Glass(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = [v2 customBackgroundView];
  v15 = v14;
  if (!a1)
  {
    if (!v14)
    {
      return;
    }

    if (qword_1ED48E920 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v4, qword_1ED48E930);
    sub_188B90950(v18, v6);
    [v2 _useAdaptiveGlass];
    sub_188B90950(v6, v9);
    v19 = sub_18A4A2F58();
    v25 = &v24;
    v20 = *(v19 - 8);
    MEMORY[0x1EEE9AC00](v19);
    v22 = &v24 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_18A4A2F38();
    sub_188EA974C(v6);
    (*(v20 + 40))(v9, v22, v19);
    _Glass.init(_:smoothness:)(v9, v13, 0.0);
    *(&v28 + 1) = v10;
    v29 = &protocol witness table for _Glass;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v27);
    sub_188C4CD1C(v13, boxed_opaque_existential_0);
    goto LABEL_12;
  }

  if (!v14 || (sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78), v25 = a1, v16 = sub_18A4A7C88(), v15, v25, (v16 & 1) == 0))
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
LABEL_12:
    UIView._background.setter(&v27);
    v26.receiver = v2;
    v26.super_class = _UITabBarGlassBackground;
    objc_msgSendSuper2(&v26, sel_setCustomBackgroundView_, a1);

    return;
  }

  v17 = v25;
}

void __swiftcall _UITabBarGlassBackground.init(frame:)(_UITabBarGlassBackground *__return_ptr retstr, __C::CGRect frame)
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v6 initWithFrame_];
}

id _UITabBarGlassBackground.init(coder:)(void *a1)
{
  v4.super_class = _UITabBarGlassBackground;
  v2 = objc_msgSendSuper2(&v4, sel_initWithCoder_, a1);

  if (v2)
  {
  }

  return v2;
}

id UIPointerRegion.init(rect:identifier:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_188F739BC(a1, v13);
  if (v14)
  {
    v10 = sub_18A4A7FF8();
    sub_188BBA15C(v13);
  }

  else
  {
    v10 = 0;
  }

  v11 = [swift_getObjCClassFromMetadata() regionWithRect:v10 identifier:{a2, a3, a4, a5}];
  swift_unknownObjectRelease();
  sub_188F736F0(a1);
  return v11;
}

double UIPointerRegion.identifier.getter@<D0>(uint64_t a1@<X8>)
{
  if ([v1 identifier])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937A70, qword_18A653920);
    swift_dynamicCast();
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

id UIPointerStyle.init(effect:shape:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v14 = *a1;
  BYTE2(v15) = *(a1 + 10);
  LOWORD(v15) = *(a1 + 8);
  isa = UIPointerEffect._bridgeToObjectiveC()().super.isa;

  if (v8 <= 1)
  {
    if (v8)
    {
      v10 = [objc_opt_self() shapeWithRoundedRect:*&v3 cornerRadius:{*&v4, *&v6, *&v5, *&v7, v14, v15}];
      goto LABEL_10;
    }

    v11 = [objc_opt_self() shapeWithPath_];
    sub_188FCF97C(v3, v4, v6, v5, v7, 0);
  }

  else
  {
    if (v8 == 2)
    {
      v10 = [objc_opt_self() beamWithPreferredLength:2 axis:{*&v3, v14, v15}];
      goto LABEL_10;
    }

    if (v8 == 3)
    {
      v10 = [objc_opt_self() beamWithPreferredLength:1 axis:{*&v3, v14, v15}];
LABEL_10:
      v11 = v10;
      goto LABEL_11;
    }

    v11 = 0;
  }

LABEL_11:
  v12 = [swift_getObjCClassFromMetadata() styleWithEffect:isa shape:v11];

  return v12;
}

uint64_t UIPointerEffect.TintMode.hashValue.getter()
{
  v1 = *v0;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](v1);
  return sub_18A4A88E8();
}

id UIPointerEffect.preview.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

CGFloat static UIPointerAccessory.Position.top.getter@<D0>(UIPointerAccessoryPosition *a1@<X8>)
{
  result = UIPointerAccessoryPositionTop.offset;
  *a1 = UIPointerAccessoryPositionTop;
  return result;
}

CGFloat static UIPointerAccessory.Position.topRight.getter@<D0>(UIPointerAccessoryPosition *a1@<X8>)
{
  result = UIPointerAccessoryPositionTopRight.offset;
  *a1 = UIPointerAccessoryPositionTopRight;
  return result;
}

CGFloat static UIPointerAccessory.Position.right.getter@<D0>(UIPointerAccessoryPosition *a1@<X8>)
{
  result = UIPointerAccessoryPositionRight.offset;
  *a1 = UIPointerAccessoryPositionRight;
  return result;
}

CGFloat static UIPointerAccessory.Position.bottomRight.getter@<D0>(UIPointerAccessoryPosition *a1@<X8>)
{
  result = UIPointerAccessoryPositionBottomRight.offset;
  *a1 = UIPointerAccessoryPositionBottomRight;
  return result;
}

CGFloat static UIPointerAccessory.Position.bottom.getter@<D0>(UIPointerAccessoryPosition *a1@<X8>)
{
  result = UIPointerAccessoryPositionBottom.offset;
  *a1 = UIPointerAccessoryPositionBottom;
  return result;
}

CGFloat static UIPointerAccessory.Position.bottomLeft.getter@<D0>(UIPointerAccessoryPosition *a1@<X8>)
{
  result = UIPointerAccessoryPositionBottomLeft.offset;
  *a1 = UIPointerAccessoryPositionBottomLeft;
  return result;
}

CGFloat static UIPointerAccessory.Position.left.getter@<D0>(UIPointerAccessoryPosition *a1@<X8>)
{
  result = UIPointerAccessoryPositionLeft.offset;
  *a1 = UIPointerAccessoryPositionLeft;
  return result;
}

CGFloat static UIPointerAccessory.Position.topLeft.getter@<D0>(UIPointerAccessoryPosition *a1@<X8>)
{
  result = UIPointerAccessoryPositionTopLeft.offset;
  *a1 = UIPointerAccessoryPositionTopLeft;
  return result;
}

id UIPointerAccessory.init(_:position:)(uint64_t a1, double *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  if (*(a1 + 40) > 1u)
  {
    if (*(a1 + 40) == 2)
    {
      v10 = [objc_opt_self() beamWithPreferredLength:2 axis:*&v2];
    }

    else
    {
      v10 = [objc_opt_self() beamWithPreferredLength:1 axis:*&v2];
    }

    goto LABEL_8;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v10 = [objc_opt_self() shapeWithRoundedRect:*&v2 cornerRadius:{*&v5, *&v6, *&v7, *&v8}];
LABEL_8:
    v9 = v10;
    goto LABEL_9;
  }

  v9 = [objc_opt_self() shapeWithPath_];
  sub_188FCF990(v2, v5, v6, v7, v8, 0);
LABEL_9:
  v11 = [swift_getObjCClassFromMetadata() accessoryWithShape:v9 position:{v3, v4}];

  return v11;
}

void __swiftcall UIPointerShape._bridgeToObjectiveC()(UIPointerShape *__return_ptr retstr)
{
  v2 = *v1;
  if (*(v1 + 40) > 1u)
  {
    if (*(v1 + 40) == 2)
    {
      v3 = [objc_opt_self() beamWithPreferredLength:2 axis:v2];
    }

    else
    {
      v3 = [objc_opt_self() beamWithPreferredLength:1 axis:v2];
    }
  }

  else if (*(v1 + 40))
  {
    v3 = [objc_opt_self() shapeWithRoundedRect:v2 cornerRadius:{*(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32)}];
  }

  else
  {
    v3 = [objc_opt_self() shapeWithPath_];
  }

  v4 = v3;
}

id static UIPointerAccessory.arrow(_:)(double *a1)
{
  v1 = [swift_getObjCClassFromMetadata() arrowAccessoryWithPosition_];

  return v1;
}

double UIPointerAccessory.shape.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = [v1 shape];
  static UIPointerShape._unconditionallyBridgeFromObjectiveC(_:)(v3, v8);

  v4 = v9;
  v5 = v10;
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void static UIPointerShape._unconditionallyBridgeFromObjectiveC(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    v14 = -1;
    v3 = a1;
    if (_s5UIKit14UIPointerShapeO34_conditionallyBridgeFromObjectiveC_6resultSbSoABC_ACSgztFZ_0(v3, &v11))
    {
      v4 = v14;
      if (v14 != 255)
      {
        v6 = *(&v12 + 1);
        v5 = v13;
        v8 = *(&v11 + 1);
        v7 = v12;
        v9 = v11;
        sub_188FCFD04(v11, *(&v11 + 1), v12, *(&v12 + 1), v13, v14);
        sub_188FCF97C(v9, v8, v7, v6, v5, v4);

        *a2 = v9;
        *(a2 + 8) = v8;
        *(a2 + 16) = v7;
        *(a2 + 24) = v6;
        *(a2 + 32) = v5;
        *(a2 + 40) = v4;
        return;
      }

      __break(1u);
    }
  }

  v15 = 0;
  v16 = 0xE000000000000000;
  sub_18A4A80E8();

  v15 = 0xD000000000000011;
  v16 = 0x800000018A68EE10;
  sub_188A34624(0, &qword_1EA9393D0, off_1E70EA430);
  v10 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v10);

  MEMORY[0x18CFE22D0](544175136, 0xE400000000000000);
  MEMORY[0x18CFE22D0](0x65746E696F504955, 0xEE00657061685372);
  sub_18A4A8398();
  __break(1u);
}

UIPointerEffect __swiftcall UIPointerEffect._bridgeToObjectiveC()()
{
  v1 = *v0;
  v2 = *(v0 + 10);
  if ((v2 >> 6) <= 1u || v2 >> 6 == 2)
  {
    v3 = [objc_opt_self() effectWithPreview_];

    v4 = v3;
  }

  else
  {
    v6 = *(v0 + 4) | (*(v0 + 10) << 16);
    v7 = [objc_opt_self() effectWithPreview_];
    [v7 setPreferredTintMode_];
    [v7 setPrefersShadow_];
    [v7 setPrefersScaledContent_];
    v4 = v7;
  }

  result._preview = v5;
  result.super.isa = v4;
  return result;
}

id UIPointerStyle.init(shape:constrainedAxes:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  if (*(a1 + 40) > 1u)
  {
    if (*(a1 + 40) == 2)
    {
      v9 = [objc_opt_self() beamWithPreferredLength:2 axis:*&v3];
    }

    else
    {
      v9 = [objc_opt_self() beamWithPreferredLength:1 axis:*&v3];
    }

    goto LABEL_8;
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v9 = [objc_opt_self() shapeWithRoundedRect:*&v3 cornerRadius:{*&v4, *&v5, *&v6, *&v7}];
LABEL_8:
    v8 = v9;
    goto LABEL_9;
  }

  v8 = [objc_opt_self() shapeWithPath_];
  sub_188FCF990(v3, v4, v5, v6, v7, 0);
LABEL_9:
  v10 = [swift_getObjCClassFromMetadata() styleWithShape:v8 constrainedAxes:a2];

  return v10;
}

uint64_t (*UIButton.pointerStyleProvider.getter())(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = [v0 pointerStyleProvider];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_188FCFD14;
    *(v4 + 24) = v3;
    return sub_188FCFD58;
  }

  return result;
}

uint64_t (*sub_188FCF104@<X0>(id *a1@<X0>, uint64_t (**a2)()@<X8>))()
{
  result = [*a1 pointerStyleProvider];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_188FD0460;
    *(v6 + 24) = v5;
    result = swift_allocObject();
    *(result + 2) = sub_188FD0464;
    *(result + 3) = v6;
    v7 = sub_188FD042C;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

void sub_188FCF1D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_188FD03EC;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_188A52E38(v1, v2);
  UIButton.pointerStyleProvider.setter(v4, v3);
}

uint64_t sub_188FCF268(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t, id *, __int128 *))
{
  static UIPointerEffect._unconditionallyBridgeFromObjectiveC(_:)(a2, &v19);
  v16 = v19;
  v18 = v21;
  v17 = v20;
  static UIPointerShape._unconditionallyBridgeFromObjectiveC(_:)(a3, v13);
  v9 = v13[0];
  v10 = v13[1];
  v11 = v14;
  v12 = v15;
  v7 = a4(a1, &v16, &v9);
  sub_188FCF990(v9, *(&v9 + 1), v10, *(&v10 + 1), v11, v12);

  return v7;
}

void static UIPointerEffect._unconditionallyBridgeFromObjectiveC(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v8 = 0;
    v9 = -260;
    v10 = -2;
    v3 = a1;
    if (_s5UIKit15UIPointerEffectO34_conditionallyBridgeFromObjectiveC_6resultSbSoABC_ACSgztFZ_0(v3, &v8))
    {
      v4 = v9 | (v10 << 16);
      if ((~v4 & 0xFEFEFC) != 0)
      {
        v5 = v8;
        v6 = v8;
        sub_188FCFF14(v5, v4);

        *a2 = v5;
        *(a2 + 10) = BYTE2(v4);
        *(a2 + 8) = v4;
        return;
      }

      __break(1u);
    }
  }

  v11 = 0;
  v12 = 0xE000000000000000;
  sub_18A4A80E8();

  v11 = 0xD000000000000011;
  v12 = 0x800000018A68EE10;
  sub_188A34624(0, &qword_1EA9393D8, off_1E70EA3F0);
  v7 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v7);

  MEMORY[0x18CFE22D0](544175136, 0xE400000000000000);
  MEMORY[0x18CFE22D0](0x65746E696F504955, 0xEF74636566664572);
  sub_18A4A8398();
  __break(1u);
}

id sub_188FCF4C4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = v7(v8, v9, v10);

  return v11;
}

uint64_t sub_188FCF564(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, Class, id))
{
  v6 = *a3;
  v7 = *(a3 + 8);
  v8 = *(a3 + 16);
  v9 = *(a3 + 24);
  v10 = *(a3 + 32);
  v11 = *(a3 + 40);
  v18 = *a2;
  BYTE2(v19) = *(a2 + 10);
  LOWORD(v19) = *(a2 + 4);
  isa = UIPointerEffect._bridgeToObjectiveC()().super.isa;
  v13 = objc_opt_self();
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v14 = [v13 beamWithPreferredLength:2 axis:{v6, v18, v19}];
    }

    else
    {
      v14 = [v13 beamWithPreferredLength:1 axis:{v6, v18, v19}];
    }
  }

  else if (v11)
  {
    v14 = [v13 shapeWithRoundedRect:v6 cornerRadius:{v7, v8, v9, v10, v18, v19}];
  }

  else
  {
    v14 = [v13 shapeWithPath_];
  }

  v15 = v14;
  v16 = a4(a1, isa, v15);

  return v16;
}

void (*UIButton.pointerStyleProvider.modify(uint64_t (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 pointerStyleProvider];
  if (v3)
  {
    v4 = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v3 = swift_allocObject();
    v3[2] = sub_188FD0460;
    v3[3] = v5;
    v6 = sub_188FD0464;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = v3;
  return sub_188FCF764;
}

void sub_188FCF764(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    sub_188A52E38(*a1, v3);
    UIButton.pointerStyleProvider.setter(v2, v3);

    sub_188A55B8C(v2, v3);
  }

  else
  {
    UIButton.pointerStyleProvider.setter(*a1, v3);
  }
}

id sub_188FCF800()
{
  v1 = *v0;
  if (*(v0 + 40) > 1u)
  {
    if (*(v0 + 40) == 2)
    {
      v2 = [objc_opt_self() beamWithPreferredLength:2 axis:v1];
    }

    else
    {
      v2 = [objc_opt_self() beamWithPreferredLength:1 axis:v1];
    }
  }

  else if (*(v0 + 40))
  {
    v2 = [objc_opt_self() shapeWithRoundedRect:v1 cornerRadius:{*(v0 + 8), *(v0 + 16), *(v0 + 24), *(v0 + 32)}];
  }

  else
  {
    v2 = [objc_opt_self() shapeWithPath_];
  }

  return v2;
}

id UIBandSelectionInteraction.selectionRect.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  [v1 selectionRect];
  result = CGRectIsNull(v10);
  v5 = result;
  v6 = 0uLL;
  v7 = 0uLL;
  if ((result & 1) == 0)
  {
    result = [v2 selectionRect];
    *(&v6 + 1) = v8;
    *(&v7 + 1) = v9;
  }

  *a1 = v6;
  *(a1 + 16) = v7;
  *(a1 + 32) = v5;
  return result;
}

void sub_188FCF97C(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    sub_188FCF990(result, a2, a3, a4, a5, a6);
  }
}

void sub_188FCF990(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a6)
  {
  }
}

uint64_t _s5UIKit15UIPointerEffectO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8) | (*(a1 + 10) << 16);
  v4 = *a2;
  v5 = *(a2 + 8) | (*(a2 + 10) << 16);
  if ((*(a1 + 10) >> 6) <= 1u)
  {
    if (!(*(a1 + 10) >> 6))
    {
      if ((v5 & 0xFFFFFF) >= 0x400000)
      {
        goto LABEL_15;
      }

LABEL_9:
      sub_188A34624(0, &qword_1ED490230, 0x1E69E58C0);
      v6 = v4;
      v7 = v2;
      v8 = sub_18A4A7C88();

      return v8 & 1;
    }

    if ((v5 & 0xC00000) == 0x400000)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  if (*(a1 + 10) >> 6 == 2)
  {
    if ((v5 & 0xC00000) != 0x800000)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  if (((v5 >> 22) & 3) != 3)
  {
LABEL_15:
    v13 = v4;
    v14 = v2;

    return 0;
  }

  sub_188A34624(0, &qword_1ED490230, 0x1E69E58C0);
  v10 = v4;
  v11 = v2;
  v12 = sub_18A4A7C88();

  result = 0;
  if ((v12 & 1) != 0 && v5 == v3 && ((v5 & 0x100) == 0) != (v3 & 0x100) >> 8)
  {
    return ((v5 & 0x10000) == 0) ^ ((v3 & 0x10000u) >> 16);
  }

  return result;
}

uint64_t _s5UIKit14UIPointerShapeO34_conditionallyBridgeFromObjectiveC_6resultSbSoABC_ACSgztFZ_0(void *a1, uint64_t a2)
{
  v4 = [a1 _type];
  result = 0;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      sub_188FCF97C(*a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32), *(a2 + 40));
      [a1 beamLength];
      *a2 = v18;
      *(a2 + 8) = 0u;
      *(a2 + 24) = 0u;
      v8 = 2;
    }

    else
    {
      if (v4 != 3)
      {
        return result;
      }

      sub_188FCF97C(*a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32), *(a2 + 40));
      [a1 beamLength];
      *a2 = v7;
      *(a2 + 8) = 0u;
      *(a2 + 24) = 0u;
      v8 = 3;
    }

    *(a2 + 40) = v8;
    return 1;
  }

  if (!v4)
  {
    sub_188FCF97C(*a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32), *(a2 + 40));
    [a1 rect];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [a1 cornerRadius];
    *a2 = v10;
    *(a2 + 8) = v12;
    *(a2 + 16) = v14;
    *(a2 + 24) = v16;
    *(a2 + 32) = v17;
    result = 1;
    *(a2 + 40) = 1;
    return result;
  }

  if (v4 == 1)
  {
    result = [a1 path];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v6 = result;
    sub_188FCF97C(*a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32), *(a2 + 40));
    *a2 = v6;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0;
    return 1;
  }

  return result;
}

id sub_188FCFD04(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a6)
  {
    return result;
  }

  return result;
}

id sub_188FCFD14()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t _s5UIKit15UIPointerEffectO34_conditionallyBridgeFromObjectiveC_6resultSbSoABC_ACSgztFZ_0(void *a1, uint64_t a2)
{
  sub_188FCFF14(*a2, *(a2 + 8) | (*(a2 + 10) << 16));
  v4 = [a1 preview];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v5 = 0x400000;
LABEL_15:
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 10) = BYTE2(v5);
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v5 = 0x800000;
    goto LABEL_15;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    v5 = 0;
    goto LABEL_15;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClassUnconditional();
  v7 = [v6 preferredTintMode];
  if (v7 < 3)
  {
    v8 = v7;
    v9 = [v6 prefersShadow];
    v10 = [v6 prefersScaledContent];
    if (v9)
    {
      v11 = 256;
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v12 = 0x10000;
    }

    else
    {
      v12 = 0;
    }

    v5 = v11 | v8 | v12 | 0xFFC00000;
    goto LABEL_15;
  }

  result = sub_18A4A8398();
  __break(1u);
  return result;
}

void sub_188FCFF14(id a1, int a2)
{
  if ((~a2 & 0xFEFEFC) != 0)
  {
  }
}

uint64_t _s5UIKit15UIPointerEffectO26_forceBridgeFromObjectiveC_6resultySoABC_ACSgztFZ_0(void *a1, uint64_t a2)
{
  result = _s5UIKit15UIPointerEffectO34_conditionallyBridgeFromObjectiveC_6resultSbSoABC_ACSgztFZ_0(a1, a2);
  if ((result & 1) == 0)
  {
    sub_18A4A80E8();

    sub_188A34624(0, &qword_1EA9393D8, off_1E70EA3F0);
    v3 = sub_18A4A8AA8();
    MEMORY[0x18CFE22D0](v3);

    MEMORY[0x18CFE22D0](544175136, 0xE400000000000000);
    MEMORY[0x18CFE22D0](0x65746E696F504955, 0xEF74636566664572);
    result = sub_18A4A8398();
    __break(1u);
  }

  return result;
}

uint64_t _s5UIKit14UIPointerShapeO26_forceBridgeFromObjectiveC_6resultySoABC_ACSgztFZ_0(void *a1, uint64_t a2)
{
  result = _s5UIKit14UIPointerShapeO34_conditionallyBridgeFromObjectiveC_6resultSbSoABC_ACSgztFZ_0(a1, a2);
  if ((result & 1) == 0)
  {
    sub_18A4A80E8();

    sub_188A34624(0, &qword_1EA9393D0, off_1E70EA430);
    v3 = sub_18A4A8AA8();
    MEMORY[0x18CFE22D0](v3);

    MEMORY[0x18CFE22D0](544175136, 0xE400000000000000);
    MEMORY[0x18CFE22D0](0x65746E696F504955, 0xEE00657061685372);
    result = sub_18A4A8398();
    __break(1u);
  }

  return result;
}

unint64_t sub_188FD0148()
{
  result = qword_1EA9393E0;
  if (!qword_1EA9393E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9393E0);
  }

  return result;
}

uint64_t sub_188FD01A8(uint64_t a1, unsigned int a2)
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

uint64_t sub_188FD01F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t sub_188FD0278(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFFFFD && *(a1 + 11))
  {
    return (*a1 + 1048573);
  }

  v3 = ((*(a1 + 10) >> 6) | (4 * ((*(a1 + 8) >> 3) & 0x1FC0 | (*(a1 + 8) >> 2) | (((*(a1 + 10) >> 1) & 0x1F) << 13)))) ^ 0xFFFFF;
  if (v3 >= 0xFFFFC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_188FD02F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFFFFC)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 1048573;
    if (a3 >= 0xFFFFD)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFFFFD)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 2) & 0x3FFFF) - (a2 << 18);
      *result = 0;
      *(result + 10) = (v3 >> 12) & 0xFE;
      *(result + 8) = (8 * v3) & 0xFE00 | (4 * (v3 & 0x3F));
    }
  }

  return result;
}

uint64_t sub_188FD0374(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 2) = ((v2 | (*(result + 2) << 16)) >> 16) & 0x3F;
  *result = v2;
  return result;
}

uint64_t sub_188FD0390(uint64_t a1, int a2)
{
  v3 = *(a1 + 8);
  result = a1 + 8;
  v4 = (v3 | (*(result + 2) << 16)) & 0x10103 | (a2 << 22);
  *result = v3 & 0x103;
  *(result + 2) = BYTE2(v4);
  return result;
}

uint64_t sub_188FD03EC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t sub_188FD042C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

id UIToolTipConfiguration.sourceRect.getter@<X0>(uint64_t a1@<X8>)
{
  [v1 sourceRect];
  result = CGRectEqualToRect(v9, *MEMORY[0x1E695F050]);
  v4 = result;
  v5 = 0uLL;
  v6 = 0uLL;
  if ((result & 1) == 0)
  {
    result = [v1 sourceRect];
    *(&v5 + 1) = v7;
    *(&v6 + 1) = v8;
  }

  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

uint64_t sub_188FD04E0()
{
  v1 = [v0 window];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 windowScene];

    if (v3)
    {
      v4 = [v3 _FBSScene];
      type metadata accessor for _UISceneKeyValueStorageExtension(0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      type metadata accessor for _UISceneKeyValueStorageComponent();
      if ([v4 componentForExtension:ObjCClassFromMetadata ofClass:swift_getObjCClassFromMetadata()])
      {
        if (swift_dynamicCastClass())
        {
          sub_1890F5B48();

          swift_unknownObjectRelease();
          v6 = sub_1891DA1A4();

          return v6 & 1;
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  return 0;
}

void sub_188FD0690(uint64_t a1, void (*a2)(void))
{
  v5 = *v2;
  swift_beginAccess();
  type metadata accessor for _UIBSSettingsController.Snapshot(0, *(v5 + 80), *(v5 + 88), v6);
  sub_18A4A7178();
  if (v11)
  {
    v7 = v11;
    swift_endAccess();
    sub_188E0A294(v11, v12);
  }

  else
  {
    swift_endAccess();
    v8 = v2[2];
    if (!v8 || (v9 = v2[3], , v7 = v8(v2, a1), sub_188A55B8C(v8, v9), !v7))
    {
      v7 = [objc_allocWithZone(MEMORY[0x1E698E768]) init];
    }
  }

  v10 = v7;
  a2();
}

void sub_188FD0880(char a1, void *a2, void (*a3)(id))
{
  v6 = a1 & 1;
  v30 = a1 & 1;
  swift_beginAccess();
  v7 = a2[7];
  if (*(v7 + 16))
  {
    v8 = sub_188E906F4();
    if (v9)
    {
      v10 = *(v7 + 56) + 16 * v8;
      v11 = *v10;
      v12 = *(v10 + 8);
      swift_endAccess();
      v13 = v11;

      goto LABEL_9;
    }
  }

  swift_endAccess();
  v14 = a2[2];
  if (v14)
  {
    v15 = a2[3];

    v16 = v14(a2, &v30);
    sub_188A55B8C(v14, v15);
    v12 = sub_188E9005C(MEMORY[0x1E69E7CC0]);
    if (v16)
    {
      [v16 mutableCopy];
      sub_18A4A7DE8();

      swift_unknownObjectRelease();
      sub_188FD2D28();
      swift_dynamicCast();
      v13 = v28;
      goto LABEL_9;
    }
  }

  else
  {
    v12 = sub_188E9005C(MEMORY[0x1E69E7CC0]);
  }

  v13 = [objc_allocWithZone(MEMORY[0x1E698E700]) init];
LABEL_9:
  a3(v13);
  if (!v3)
  {
    if (*(v12 + 16))
    {
      swift_beginAccess();
      v13 = v13;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = a2[7];
      a2[7] = 0x8000000000000000;
      sub_188EA1D80(v13, v12, v6, isUniquelyReferenced_nonNull_native);
      a2[7] = v29;
      swift_endAccess();
    }

    else
    {
      swift_beginAccess();
      v18 = sub_1891EA24C();
      v20 = v19;
      swift_endAccess();
      sub_188E0A294(v18, v20);
      v21 = a2[4];
      if (v21)
      {
        v22 = a2[5];
        v23 = a2[2];
        if (v23)
        {
          v24 = a2[3];
          sub_188A52E38(a2[4], a2[5]);
          sub_188A52E38(v23, v24);
          v25 = v23(a2, &v30);
          sub_188A55B8C(v23, v24);
        }

        else
        {

          v25 = 0;
        }

        v26 = [objc_opt_self() diffFromSettings:v25 toSettings:v13];
        if (v26)
        {
          v27 = v26;
          v21(a2, &v30, v26);

          sub_188A55B8C(v21, v22);

          v13 = v27;
          goto LABEL_13;
        }

        sub_188A55B8C(v21, v22);
      }
    }
  }

LABEL_13:
}

void sub_188FD0BBC(uint64_t a1, void (*a2)(id *, __n128))
{
  v3 = v2;
  v33 = a2;
  v5 = *v2;
  v6 = *(v5 + 80);
  v30 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v31 = &v29 - v7;
  swift_beginAccess();
  v8 = *(v5 + 88);
  type metadata accessor for _UIBSSettingsController.Snapshot(0, v6, v8, v9);
  v32 = a1;
  sub_18A4A7178();
  v10 = v34;
  if (v34)
  {
    v11 = v35;
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v13 = v3[2];
    if (v13)
    {
      v14 = v3[3];

      v15 = v13(v3, v32);
      sub_188A55B8C(v13, v14);
    }

    else
    {
      v15 = 0;
    }

    v10 = sub_188FD1950(v15, v6, v8, v12);
    v11 = v16;
  }

  v36 = v10;
  v37 = v11;
  v17 = v38;
  (v33)(&v36);
  v19 = v36;
  if (v17)
  {

    return;
  }

  v20 = v37;
  v21 = type metadata accessor for _UIBSSettingsController.Snapshot.WeakAssertion(0, v6, v8, v18);
  if (MEMORY[0x18CFE2090](v20, MEMORY[0x1E69E5FE0], v21, MEMORY[0x1E69E5FE8]))
  {
    swift_beginAccess();
    sub_18A4A7158();
    sub_18A4A70F8();
    swift_endAccess();
    sub_188E0A294(v34, v35);
    v22 = v3[4];
    if (v22)
    {
      v23 = v3[5];
      v24 = v3[2];
      if (v24)
      {
        v25 = v3[3];
        sub_188A52E38(v3[4], v3[5]);
        sub_188A52E38(v24, v25);
        v26 = v24(v3, v32);
        sub_188A55B8C(v24, v25);
      }

      else
      {

        v26 = 0;
      }

      v27 = [objc_opt_self() diffFromSettings:v26 toSettings:v19];
      if (v27)
      {
        v28 = v27;
        v22(v3, v32, v27);

        sub_188A55B8C(v22, v23);

        return;
      }

      sub_188A55B8C(v22, v23);
    }
  }

  else
  {
    (*(v30 + 16))(v31, v32, v6);
    v34 = v19;
    v35 = v20;
    swift_beginAccess();
    sub_18A4A7158();
    v19 = v19;

    sub_18A4A7188();
    swift_endAccess();
  }
}

uint64_t sub_188FD0F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a7;
  v33 = a8;
  v27 = a5;
  v28 = a6;
  v30 = a3;
  v31 = a4;
  v29 = a2;
  v10 = *v8;
  v11 = *(*v8 + 80);
  v12 = *(v11 - 8);
  v26[1] = *(v12 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = v26 - v13;
  swift_beginAccess();
  v15 = *(v10 + 88);
  type metadata accessor for _UIBSSettingsController.ObservationController(0, v11, v15, v16);
  v34 = a1;
  sub_18A4A7178();
  if (v35)
  {
    swift_endAccess();
    (*(v12 + 16))(v14, v34, v11);
  }

  else
  {
    swift_endAccess();
    v17 = swift_allocObject();
    *(v17 + 16) = sub_188E8EDF4(MEMORY[0x1E69E7CC0]);
    v18 = *(v12 + 16);
    v18(v14, v34, v11);
    v35 = v17;
    swift_beginAccess();
    sub_18A4A7158();
    swift_retain_n();
    sub_18A4A7188();
    swift_endAccess();
    v18(v14, v34, v11);
  }

  v19 = (*(v12 + 80) + 64) & ~*(v12 + 80);
  v20 = swift_allocObject();
  v22 = v32;
  v21 = v33;
  *(v20 + 2) = v11;
  *(v20 + 3) = v22;
  *(v20 + 4) = v15;
  *(v20 + 5) = v21;
  v23 = v28;
  *(v20 + 6) = v27;
  *(v20 + 7) = v23;
  (*(v12 + 32))(&v20[v19], v14, v11);

  sub_188FD1AAC(v29, v30, v31, v22, v21);
  v24 = sub_188FD20C0(sub_188FD2E20, v20);

  return v24;
}

uint64_t sub_188FD127C()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_188E8EDF4(MEMORY[0x1E69E7CC0]);
  return v0;
}

uint64_t sub_188FD12C0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9393E8, &qword_18A659BA8);
  sub_188FD0BBC(a1, sub_188FD2D74);
  return v3;
}

uint64_t sub_188FD1338@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v25 = a4;
  v24[3] = a1;
  v6 = *a2;
  v7 = *(*a2 + 80);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v24 - v9;
  v24[2] = "er";
  aBlock = 0;
  v27 = 0xE000000000000000;
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000011, 0x800000018A69AFF0);
  v32 = a2;
  v11 = *(v6 + 88);
  type metadata accessor for _UIBSSettingsController(0, v7, v11, v12);
  sub_18A4A8688();
  MEMORY[0x18CFE22D0](58, 0xE100000000000000);
  sub_18A4A8688();
  v24[1] = aBlock;
  v13 = swift_allocObject();
  swift_weakInit();
  (*(v8 + 16))(v10, a3, v7);
  v14 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = v7;
  *(v15 + 3) = v11;
  *(v15 + 4) = v13;
  (*(v8 + 32))(&v15[v14], v10, v7);
  v16 = objc_allocWithZone(MEMORY[0x1E698E778]);

  v17 = sub_18A4A7258();
  v18 = sub_18A4A7258();

  v30 = sub_188FD2D90;
  v31 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_188BFF280;
  v29 = &block_descriptor_59;
  v19 = _Block_copy(&aBlock);
  v20 = [v16 initWithIdentifier:v17 forReason:v18 invalidationBlock:v19];

  _Block_release(v19);

  v22 = type metadata accessor for _UIBSSettingsController.Snapshot(0, v7, v11, v21);
  result = sub_188FD174C(v20, v22);
  *v25 = v20;
  return result;
}

double sub_188FD1654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_188FD16C8(a1, a3);
  }

  return result;
}

uint64_t sub_188FD174C(void *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  v4 = a1;
  swift_unknownObjectWeakInit();

  type metadata accessor for _UIBSSettingsController.Snapshot.WeakAssertion(255, v2, v3, v5);
  sub_18A4A7158();
  return sub_18A4A7188();
}

uint64_t sub_188FD17DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _UIBSSettingsController.Snapshot.WeakAssertion(255, *(a2 + 16), *(a2 + 24), a4);
  sub_18A4A7158();
  sub_18A4A70F8();
  v4 = sub_18A4A7D38();
  return (*(*(v4 - 8) + 8))(v6, v4);
}

uint64_t *sub_188FD1884()
{
  sub_188A55B8C(v0[2], v0[3]);
  sub_188A55B8C(v0[4], v0[5]);

  return v0;
}

uint64_t sub_188FD18BC()
{
  sub_188FD1884();

  return swift_deallocClassInstance();
}

id sub_188FD1950(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _UIBSSettingsController.Snapshot.WeakAssertion(255, a2, a3, a4);
  v6 = MEMORY[0x1E69E5FE0];
  swift_getTupleTypeMetadata2();
  v7 = sub_18A4A75C8();
  sub_188FD2A3C(v7, v6, v5, MEMORY[0x1E69E5FE8]);

  if (!a1)
  {
    return [objc_allocWithZone(MEMORY[0x1E698E700]) init];
  }

  [a1 mutableCopy];
  sub_18A4A7DE8();

  swift_unknownObjectRelease();
  sub_188FD2D28();
  swift_dynamicCast();
  return v9;
}

uint64_t sub_188FD1A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __n128 a8)
{
  sub_188FD1AAC(a1, a2, a3, a6, a7);
  v10 = sub_188FD20C0(a4, a5);

  return v10;
}

uint64_t *sub_188FD1AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = sub_189091C1C(a4);
  swift_beginAccess();
  v13 = v5[2];
  if (*(v13 + 16))
  {
    v14 = sub_188C4585C(v12);
    if (v15)
    {
      sub_188A53994(*(v13 + 56) + 40 * v14, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FCF0, &qword_18A659BB0);
      v16 = *(v11 + 88);
      v22[0] = *(v11 + 80);
      v22[1] = a4;
      v22[2] = v16;
      v22[3] = a5;
      type metadata accessor for _UIBSSettingsController.Inspector(0, v22);
      if (swift_dynamicCast())
      {
        return v22[4];
      }
    }
  }

  v18 = *(v11 + 88);
  v23[0] = *(v11 + 80);
  v23[1] = a4;
  v23[2] = v18;
  v24 = a5;
  v19 = type metadata accessor for _UIBSSettingsController.Inspector(0, v23);

  v17 = sub_188FD3080(a1, a2, a3);

  v20 = sub_189091C1C(a4);
  v24 = v19;
  WitnessTable = swift_getWitnessTable();
  v23[0] = v17;
  swift_beginAccess();

  sub_188F28C0C(v23, v20);
  swift_endAccess();
  return v17;
}

void sub_188FD1CFC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v41 = a1;
  v6 = *(*v4 + 88);
  v40 = *(*v4 + 104);
  v42 = type metadata accessor for UITypedKeyDiff(0, v6, v40, a4);
  v39 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v8 = &v36 - v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 1);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v36 - v20;
  sub_188FD250C(v41);
  sub_188FD250C(a2);
  v38 = v10;
  v22 = *(v10 + 16);
  v36 = v21;
  v22(v15, v21, AssociatedTypeWitness);
  v37 = v18;
  v41 = AssociatedTypeWitness;
  v22(v12, v18, AssociatedTypeWitness);
  sub_189202334(v15, v12, v6, v40, v8);
  swift_beginAccess();
  sub_18A4A29D8();
  swift_getFunctionTypeMetadata1();
  sub_188FD2EAC();
  signpost_c2_entryLock_start();
  v24 = v23;
  v25 = v23 + 64;
  v26 = 1 << *(v23 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v23 + 64);
  v29 = (v26 + 63) >> 6;

  v30 = 0;
  while (v28)
  {
    v31 = v30;
LABEL_9:
    v32 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v33 = *(*(v24 + 56) + ((v31 << 10) | (16 * v32)));

    v33(v8);
  }

  while (1)
  {
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v31 >= v29)
    {

      (*(v39 + 8))(v8, v42);
      v34 = *(v38 + 8);
      v35 = v41;
      v34(v37, v41);
      v34(v36, v35);
      return;
    }

    v28 = *(v25 + 8 * v31);
    ++v30;
    if (v28)
    {
      v30 = v31;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_188FD20C0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_18A4A29D8();
  v7 = *(v6 - 8);
  v32 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v31 = &v29 - v11;
  sub_18A4A29C8();
  v13 = v12;
  v14 = v6;
  (*(v7 + 16))(v9, v13, v6);
  v15 = swift_allocObject();
  v34 = sub_188FD2E84;
  v35 = v15;
  *&v30 = v5[10];
  v15[2] = v30;
  v16 = v5[11];
  v15[3] = v16;
  v17 = v5[12];
  v15[4] = v17;
  v18 = v5[13];
  v15[5] = v18;
  v15[6] = a1;
  v15[7] = a2;
  swift_beginAccess();
  type metadata accessor for UITypedKeyDiff(255, v16, v18, v19);
  swift_getFunctionTypeMetadata1();
  sub_188FD2EAC();
  sub_18A4A7158();

  sub_18A4A7188();
  swift_endAccess();
  *&v20 = v30;
  *(&v20 + 1) = v16;
  *&v21 = v17;
  *(&v21 + 1) = v18;
  v29 = v21;
  v30 = v20;
  v33[0] = v20;
  v33[1] = v21;
  type metadata accessor for _UIBSSettingsController.Inspector.InvalidationToken(0, v33);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = *(v7 + 32);
  v24 = v14;
  v23(v9, v31, v14);
  v25 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v26 = swift_allocObject();
  v27 = v29;
  *(v26 + 16) = v30;
  *(v26 + 32) = v27;
  *(v26 + 48) = v22;
  v23((v26 + v25), v9, v24);
  result = swift_allocObject();
  *(result + 16) = sub_188FD2F04;
  *(result + 24) = v26;
  return result;
}

double sub_188FD23D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    sub_18A4A29D8();
    type metadata accessor for UITypedKeyDiff(255, a4, a6, v9);
    swift_getFunctionTypeMetadata1();
    sub_188FD2EAC();
    sub_18A4A7158();
    sub_18A4A70F8();
    swift_endAccess();

    return sub_188A55B8C(v10, v11);
  }

  return result;
}

uint64_t sub_188FD24CC(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

void sub_188FD250C(void *a1)
{
  if (a1)
  {
    v2 = v1[2];
    v3 = a1;
    v2();
  }

  else
  {
    (*(*(*v1 + 104) + 16))();
  }
}

uint64_t sub_188FD25C4()
{
  v1 = *(v0 + 16);

  v1(v2);

  return v0;
}

uint64_t sub_188FD2614()
{
  sub_188FD25C4();

  return swift_deallocClassInstance();
}

uint64_t sub_188FD2644()
{

  return swift_deallocClassInstance();
}

uint64_t sub_188FD26FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_188FD2780@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 96);
  v6[0] = *(a1 + 80);
  v6[1] = v4;
  type metadata accessor for _UIBSSettingsController.Inspector(0, v6);
  result = sub_18A4A8128();
  *a3 = result;
  return result;
}

uint64_t sub_188FD27D8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_188FD2858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18A4A7198();

  return sub_188FD28B4(a1, v6, a2, a3);
}

unint64_t sub_188FD28B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_18A4A7248();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

unint64_t sub_188FD2A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_18A4A7608())
  {
    sub_18A4A8498();
    v13 = sub_18A4A8488();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_18A4A7608();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_18A4A75E8())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_18A4A8158();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_188FD2858(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

unint64_t sub_188FD2D28()
{
  result = qword_1EA92FBF0;
  if (!qword_1EA92FBF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA92FBF0);
  }

  return result;
}

uint64_t sub_188FD2DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = type metadata accessor for _UIBSSettingsController.Snapshot(0, v5, v6, a4);
  return sub_188FD17DC(v7, v8, v9, v10);
}

unint64_t sub_188FD2EAC()
{
  result = qword_1ED48CEF0;
  if (!qword_1ED48CEF0)
  {
    sub_18A4A29D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48CEF0);
  }

  return result;
}

double sub_188FD2F04()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(sub_18A4A29D8() - 8);
  v6 = v0[6];
  v7 = v0 + ((*(v5 + 80) + 56) & ~*(v5 + 80));

  return sub_188FD23D0(v6, v7, v1, v2, v3, v4);
}

uint64_t *sub_188FD2F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v3[2] = a2;
  v3[3] = a3;
  v5 = sub_18A4A29D8();
  type metadata accessor for UITypedKeyDiff(255, *(v4 + 88), *(v4 + 104), v6);
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();

  swift_getTupleTypeMetadata2();
  v8 = sub_18A4A75C8();
  v9 = sub_188FD2EAC();
  v10 = sub_188FD2A3C(v8, v5, FunctionTypeMetadata1, v9);

  v3[4] = v10;
  return v3;
}

uint64_t *sub_188FD3080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 96);
  v9[0] = *(v3 + 80);
  v9[1] = v7;
  type metadata accessor for _UIBSSettingsController.Inspector(0, v9);
  swift_allocObject();
  return sub_188FD2F98(a1, a2, a3);
}

uint64_t sub_188FD30EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void static UISceneConnectionOptionDefinition.createAction(payload:responder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1891BCEC4(a1, 0, 0, v4, a3, AssociatedTypeWitness, a4);
  if (!v5)
  {
    v12 = v11;
    [objc_allocWithZone(MEMORY[0x1E698E5F0]) initWithInfo:v11 responder:a2];
  }
}

Swift::Bool __swiftcall UISceneConnectionOptions.contains(targetContentIdentifier:)(Swift::String targetContentIdentifier)
{
  v2 = v1;
  object = targetContentIdentifier._object;
  countAndFlagsBits = targetContentIdentifier._countAndFlagsBits;
  v5 = [(_UISceneHostingController *)v2 _fbScene];
  if (v5)
  {
    v6 = v5;
    sub_1891FC000(countAndFlagsBits, object);
    v8 = v7;

    LOBYTE(v5) = v8 & 1;
  }

  return v5;
}

void static UISceneConnectionOptionDefinition.createAction(payload:targetContentIdentifier:responder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1891BCEC4(a1, a2, a3, v6, a5, AssociatedTypeWitness, a6);
  if (!v7)
  {
    v16 = v15;
    [objc_allocWithZone(MEMORY[0x1E698E5F0]) initWithInfo:v15 responder:a4];
  }
}

uint64_t UISceneConnectionOptionDefinitionError.hashValue.getter()
{
  v1 = *v0;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](v1);
  return sub_18A4A88E8();
}

uint64_t (*static UISceneConnectionOptionDefinition<>.invokeSceneDelegate(_:scene:payload:)(uint64_t (*result)(uint64_t), uint64_t a2, uint64_t a3))(uint64_t)
{
  if (result)
  {
    return result(a3);
  }

  return result;
}

uint64_t (*static UISceneConnectionOptionDefinition<>.invokeSceneDelegate(_:scene:payload:)(uint64_t (*result)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t, uint64_t)
{
  if (result)
  {
    return result(a3, a4);
  }

  return result;
}

uint64_t UISceneConnectionOptionDefinitionIdentifier.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD00000000000002FLL, 0x800000018A69B030);
  MEMORY[0x18CFE22D0](v1, v2);
  MEMORY[0x18CFE22D0](15906, 0xE200000000000000);
  return 0;
}

uint64_t static UISceneConnectionOptionDefinitionIdentifier.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_18A4A86C8(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_18A4A86C8();
    }
  }

  return result;
}

void sub_188FD35B0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000018A69B060 == a2 || (sub_18A4A86C8() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 0x4E64656C676E616DLL && a2 == 0xEB00000000656D61)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_18A4A86C8();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t sub_188FD369C(uint64_t a1)
{
  v2 = sub_188DC79D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_188FD36D8(uint64_t a1)
{
  v2 = sub_188DC79D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UISceneConnectionOptionDefinitionIdentifier.hash(into:)(uint64_t a1)
{
  sub_18A4A7348();

  return sub_18A4A7348();
}

uint64_t UISceneConnectionOptionDefinitionIdentifier.hashValue.getter()
{
  sub_18A4A8888();
  sub_18A4A7348();
  sub_18A4A7348();
  return sub_18A4A88E8();
}

uint64_t sub_188FD37CC()
{
  sub_18A4A8888();
  sub_18A4A7348();
  sub_18A4A7348();
  return sub_18A4A88E8();
}

uint64_t sub_188FD3834()
{
  sub_18A4A8888();
  sub_18A4A7348();
  sub_18A4A7348();
  return sub_18A4A88E8();
}

uint64_t sub_188FD3898()
{
  v1 = *v0;
  v2 = v0[1];
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD00000000000002FLL, 0x800000018A69B030);
  MEMORY[0x18CFE22D0](v1, v2);
  MEMORY[0x18CFE22D0](15906, 0xE200000000000000);
  return 0;
}

uint64_t sub_188FD3928(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_18A4A86C8(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_18A4A86C8();
    }
  }

  return result;
}

unint64_t sub_188FD39D0()
{
  result = qword_1EA939400;
  if (!qword_1EA939400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA939400);
  }

  return result;
}

uint64_t dispatch thunk of _UISceneConnectionOptionDefinitionCustomHandling.handleConnectionOptionDefinition<A>(payload:definition:scene:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 16) + **(a7 + 16));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_188C482B4;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

unint64_t sub_188FD3BF4()
{
  result = qword_1EA939408;
  if (!qword_1EA939408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA939408);
  }

  return result;
}

double sub_188FD3C48(void (**a1)(uint64_t *, char *), uint64_t a2, char *a3)
{
  v3 = *a1;
  v6 = *a3;
  v5 = a2;

  v3(&v5, &v6);

  return result;
}

uint64_t sub_188FD3CAC()
{
  v0 = sub_18A4A2D48();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E6999C28], v0, v2);
  sub_18A4A3188();
  v6 = v5;
  v8 = v7;
  result = (*(v1 + 8))(v4, v0);
  qword_1EA994DE0 = v6;
  *algn_1EA994DE8 = v8;
  return result;
}

double sub_188FD3E44(char a1)
{
  v2 = v1;
  v3 = type metadata accessor for DesignLibrarySwitch(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28[-v7];
  v29 = 0;
  sub_18A4A4468();
  v9 = *(v1 + OBJC_IVAR___UISwitchDesignLibraryVisualElement_coreHostingView);
  if (v9)
  {
    v10 = *(v1 + OBJC_IVAR___UISwitchDesignLibraryVisualElement_isOn);
    v11 = sub_18A4A2D68();
    v12 = *(v11 - 8);
    v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
    v15 = &v28[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
    if (*(v2 + OBJC_IVAR___UISwitchDesignLibraryVisualElement_isPressed))
    {
      v16 = MEMORY[0x1E6999C50];
    }

    else
    {
      v16 = MEMORY[0x1E6999C48];
    }

    (*(v12 + 104))(v15, *v16, v11, v13);
    v17 = *(v2 + OBJC_IVAR___UISwitchDesignLibraryVisualElement_tapSeed);
    *v8 = v10;
    (*(v12 + 32))(&v8[*(v3 + 20)], v15, v11);
    v8[*(v3 + 24)] = v17;
    sub_188FD6D38(v8, v5);
    v18 = MEMORY[0x1E69E7D40];
    v19 = *((*MEMORY[0x1E69E7D40] & *v9) + 0x68);
    swift_beginAccess();
    v20 = v9;
    sub_188FD7004(v5, v9 + v19);
    swift_endAccess();
    v21 = *(v20 + *((*v18 & *v20) + 0x60));
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v23 = Strong;
      v24 = v21;
    }

    else
    {
      swift_unknownObjectWeakAssign();
      v26 = v21;
    }

    if (sub_18A4A46F8())
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_188A34360(&unk_1EA939500, &qword_1EA9394F8, &qword_18A65A1A0, &unk_18A64C020);
      v27 = v20;
      sub_18A4A4708();
    }

    sub_18A4A4668();

    sub_188FD7068(v8);
  }

  else
  {
  }

  return result;
}

void sub_188FD42B0()
{
  v1 = v0;
  v2 = type metadata accessor for DesignLibrarySwitch(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1[OBJC_IVAR___UISwitchDesignLibraryVisualElement_isOn];
  v7 = sub_18A4A2D68();
  v8 = *(v7 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[OBJC_IVAR___UISwitchDesignLibraryVisualElement_isPressed])
  {
    v12 = MEMORY[0x1E6999C50];
  }

  else
  {
    v12 = MEMORY[0x1E6999C48];
  }

  (*(v8 + 104))(v11, *v12, v7, v9);
  v13 = v1[OBJC_IVAR___UISwitchDesignLibraryVisualElement_tapSeed];
  *v5 = v6;
  (*(v8 + 32))(&v5[*(v3 + 28)], v11, v7);
  v5[*(v3 + 32)] = v13;
  v14 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9394F8, &qword_18A65A1A0));
  v15 = sub_1890F86FC(v5);
  sub_188FD6F14(v15);

  v16 = objc_allocWithZone(UILongPressGestureRecognizer);
  v17 = v1;
  v18 = [v16 initWithTarget:v17 action:sel_handleLongPress_];
  v19 = OBJC_IVAR___UISwitchDesignLibraryVisualElement_longPressGestureRecognizer;
  v20 = *&v17[OBJC_IVAR___UISwitchDesignLibraryVisualElement_longPressGestureRecognizer];
  *&v17[OBJC_IVAR___UISwitchDesignLibraryVisualElement_longPressGestureRecognizer] = v18;
  v21 = v18;

  if (!v21)
  {
    __break(1u);
    goto LABEL_20;
  }

  [v21 setMinimumPressDuration_];

  v22 = *&v17[v19];
  if (!v22)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v22 _setCanExcludeWithActiveRequirements_];
  v23 = *&v17[v19];
  if (!v23)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v24 = v23;
  v25 = sub_18A4A7258();
  [v24 setName_];

  if (!*&v17[v19])
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v17 addGestureRecognizer_];
  v26 = *&v17[v19];
  if (!v26)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v26 setDelegate_];
  v27 = [objc_allocWithZone(UIPanGestureRecognizer) initWithTarget:v17 action:sel_handlePan_];
  v28 = OBJC_IVAR___UISwitchDesignLibraryVisualElement_panGestureRecognizer;
  v29 = *&v17[OBJC_IVAR___UISwitchDesignLibraryVisualElement_panGestureRecognizer];
  *&v17[OBJC_IVAR___UISwitchDesignLibraryVisualElement_panGestureRecognizer] = v27;
  v30 = v27;

  if (!v30)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v30 _setCanExcludeWithActiveRequirements_];

  v31 = *&v17[v28];
  if (!v31)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v32 = v31;
  v33 = sub_18A4A7258();
  [v32 setName_];

  if (!*&v17[v28])
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v17 addGestureRecognizer_];
  v34 = *&v17[v28];
  if (!v34)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v34 setDelegate_];
  v35 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v17 action:sel_handleTap_];

  v36 = OBJC_IVAR___UISwitchDesignLibraryVisualElement_tapGestureRecognizer;
  v37 = *&v17[OBJC_IVAR___UISwitchDesignLibraryVisualElement_tapGestureRecognizer];
  *&v17[OBJC_IVAR___UISwitchDesignLibraryVisualElement_tapGestureRecognizer] = v35;
  v38 = v35;

  if (!v38)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  [v38 _setCanExcludeWithActiveRequirements_];

  v39 = *&v17[v36];
  if (!v39)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  [v39 setMaximumTapDuration_];
  v40 = *&v17[v36];
  if (!v40)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v41 = v40;
  v42 = sub_18A4A7258();
  [v41 setName_];

  if (!*&v17[v36])
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v17 addGestureRecognizer_];
  v43 = *&v17[v36];
  if (v43)
  {
    [v43 setDelegate_];
    v44 = [objc_opt_self() feedbackGeneratorWithStyle:0 forView:v17];
    v45 = *&v17[OBJC_IVAR___UISwitchDesignLibraryVisualElement_feedbackGenerator];
    *&v17[OBJC_IVAR___UISwitchDesignLibraryVisualElement_feedbackGenerator] = v44;

    v46 = [objc_allocWithZone(UISwitchMVEGestureTrackingSession) initWithVisualElement_];
    v47 = *&v17[OBJC_IVAR___UISwitchDesignLibraryVisualElement_gestureTrackingSession];
    *&v17[OBJC_IVAR___UISwitchDesignLibraryVisualElement_gestureTrackingSession] = v46;

    return;
  }

LABEL_32:
  __break(1u);
}

id sub_188FD47D4(uint64_t a1, uint64_t a2)
{
  v2[OBJC_IVAR___UISwitchDesignLibraryVisualElement_isOn] = 0;
  v2[OBJC_IVAR___UISwitchDesignLibraryVisualElement_isPressed] = 0;
  v2[OBJC_IVAR___UISwitchDesignLibraryVisualElement_tapSeed] = 0;
  v3 = &v2[OBJC_IVAR___UISwitchDesignLibraryVisualElement_customizations];
  *v3 = 0u;
  v3[1] = 0u;
  *(v3 + 25) = 0u;
  *&v2[OBJC_IVAR___UISwitchDesignLibraryVisualElement_coreHostingView] = 0;
  *&v2[OBJC_IVAR___UISwitchDesignLibraryVisualElement_gestureTrackingSession] = 0;
  *&v2[OBJC_IVAR___UISwitchDesignLibraryVisualElement_longPressGestureRecognizer] = 0;
  *&v2[OBJC_IVAR___UISwitchDesignLibraryVisualElement_panGestureRecognizer] = 0;
  *&v2[OBJC_IVAR___UISwitchDesignLibraryVisualElement_tapGestureRecognizer] = 0;
  *&v2[OBJC_IVAR___UISwitchDesignLibraryVisualElement_selectGestureRecognizer] = 0;
  *&v2[OBJC_IVAR___UISwitchDesignLibraryVisualElement_feedbackGenerator] = 0;
  if (qword_1EA92F880 != -1)
  {
    swift_once();
  }

  v4 = *&qword_1EA994DE0;
  v5 = *algn_1EA994DE8;
  type metadata accessor for UISwitchDesignLibraryVisualElement();
  v9.receiver = v2;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, sel_initWithFrame_, 0.0, 0.0, v4, v5);
  sub_188FD42B0();

  return v7;
}

id sub_188FD4930(void *a1, uint64_t a2)
{
  v2[OBJC_IVAR___UISwitchDesignLibraryVisualElement_isOn] = 0;
  v2[OBJC_IVAR___UISwitchDesignLibraryVisualElement_isPressed] = 0;
  v2[OBJC_IVAR___UISwitchDesignLibraryVisualElement_tapSeed] = 0;
  v4 = &v2[OBJC_IVAR___UISwitchDesignLibraryVisualElement_customizations];
  *v4 = 0u;
  v4[1] = 0u;
  *(v4 + 25) = 0u;
  *&v2[OBJC_IVAR___UISwitchDesignLibraryVisualElement_coreHostingView] = 0;
  *&v2[OBJC_IVAR___UISwitchDesignLibraryVisualElement_gestureTrackingSession] = 0;
  *&v2[OBJC_IVAR___UISwitchDesignLibraryVisualElement_longPressGestureRecognizer] = 0;
  *&v2[OBJC_IVAR___UISwitchDesignLibraryVisualElement_panGestureRecognizer] = 0;
  *&v2[OBJC_IVAR___UISwitchDesignLibraryVisualElement_tapGestureRecognizer] = 0;
  *&v2[OBJC_IVAR___UISwitchDesignLibraryVisualElement_selectGestureRecognizer] = 0;
  *&v2[OBJC_IVAR___UISwitchDesignLibraryVisualElement_feedbackGenerator] = 0;
  v5 = type metadata accessor for UISwitchDesignLibraryVisualElement();
  v11.receiver = v2;
  v11.super_class = v6;
  v7 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1, v5);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    sub_188FD42B0();
  }

  return v8;
}

uint64_t sub_188FD4A54(void *a1, void *a2)
{
  v3 = v2;
  v6 = OBJC_IVAR___UISwitchDesignLibraryVisualElement_longPressGestureRecognizer;
  v7 = *(v2 + OBJC_IVAR___UISwitchDesignLibraryVisualElement_longPressGestureRecognizer);
  if (v7)
  {
    sub_188A34624(0, &unk_1EA930B30, off_1E70E99A0);
    v8 = v7;
    v9 = a1;
    v10 = sub_18A4A7C88();

    if (v10)
    {
      v11 = *(v2 + OBJC_IVAR___UISwitchDesignLibraryVisualElement_tapGestureRecognizer);
      if (v11)
      {
        v12 = v11;
        v13 = a2;
        v14 = sub_18A4A7C88();

        if (v14)
        {
          return 1;
        }
      }
    }
  }

  v15 = *(v3 + OBJC_IVAR___UISwitchDesignLibraryVisualElement_tapGestureRecognizer);
  if (v15)
  {
    sub_188A34624(0, &unk_1EA930B30, off_1E70E99A0);
    v16 = a1;
    v17 = v15;
    v18 = sub_18A4A7C88();

    if (v18)
    {
      v19 = *(v3 + v6);
      if (!v19)
      {
        goto LABEL_13;
      }

      v20 = a2;
      v21 = v19;
      v22 = sub_18A4A7C88();

      if (v22)
      {
        return 1;
      }
    }
  }

  v23 = *(v3 + v6);
  if (v23)
  {
    sub_188A34624(0, &unk_1EA930B30, off_1E70E99A0);
    v24 = a1;
    v25 = v23;
    v26 = sub_18A4A7C88();

    if (v26)
    {
      v27 = *(v3 + OBJC_IVAR___UISwitchDesignLibraryVisualElement_panGestureRecognizer);
      if (v27)
      {
        v28 = a2;
        v29 = v27;
        v30 = sub_18A4A7C88();

        if (v30)
        {
          return 1;
        }
      }
    }
  }

LABEL_13:
  v31 = *(v3 + OBJC_IVAR___UISwitchDesignLibraryVisualElement_panGestureRecognizer);
  if (v31)
  {
    sub_188A34624(0, &unk_1EA930B30, off_1E70E99A0);
    v32 = a1;
    v33 = v31;
    v34 = sub_18A4A7C88();

    if (v34)
    {
      v35 = *(v3 + v6);
      if (v35)
      {
        v36 = a2;
        v37 = v35;
        v38 = sub_18A4A7C88();

        if (v38)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

BOOL sub_188FD4D24(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(v2 + OBJC_IVAR___UISwitchDesignLibraryVisualElement_longPressGestureRecognizer);
  if (!v5 || (sub_188A34624(0, &unk_1EA930B30, off_1E70E99A0), v6 = a1, v7 = v5, v8 = sub_18A4A7C88(), v7, v6, (v8 & 1) == 0))
  {
    v9 = *(v3 + OBJC_IVAR___UISwitchDesignLibraryVisualElement_panGestureRecognizer);
    if (!v9)
    {
      return 0;
    }

    sub_188A34624(0, &unk_1EA930B30, off_1E70E99A0);
    v10 = a1;
    v11 = v9;
    v12 = sub_18A4A7C88();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  ObjectType = swift_getObjectType();
  return ObjectType == sub_188A34624(0, &qword_1EA9394F0, off_1E70EA618);
}

void sub_188FD4EA4(void *a1)
{
  v3 = [v1 switchControl];
  if (v3)
  {
    v4 = v3;
    [a1 locationInView_];
    v6 = v5;
    v8 = v7;
    v9 = [a1 state];
    v10 = [v4 pointMostlyInside_];
    v11 = OBJC_IVAR___UISwitchDesignLibraryVisualElement_isOn;
    v12 = v1[OBJC_IVAR___UISwitchDesignLibraryVisualElement_isOn];
    v13 = OBJC_IVAR___UISwitchDesignLibraryVisualElement_isPressed;
    v14 = v1[OBJC_IVAR___UISwitchDesignLibraryVisualElement_isPressed];
    if (v10)
    {
      v1[OBJC_IVAR___UISwitchDesignLibraryVisualElement_isPressed] = 1;
      if (v9 == 3)
      {
        v27 = OBJC_IVAR___UISwitchDesignLibraryVisualElement_gestureTrackingSession;
        v28 = *&v1[OBJC_IVAR___UISwitchDesignLibraryVisualElement_gestureTrackingSession];
        if (!v28)
        {
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        if ([v28 canApplyPendingOnValueForGesture_])
        {
          v29 = *&v1[v27];
          if (!v29)
          {
LABEL_46:
            __break(1u);
            return;
          }

          [v29 applyPendingDisplayedOnValueWithoutSendingActions];
          v23 = 1;
          v22 = 1;
          goto LABEL_24;
        }
      }

      else if (v9 == 2)
      {
        v24 = OBJC_IVAR___UISwitchDesignLibraryVisualElement_gestureTrackingSession;
        v25 = *&v1[OBJC_IVAR___UISwitchDesignLibraryVisualElement_gestureTrackingSession];
        if (!v25)
        {
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        if ([v25 canApplyPendingOnValueForGesture_])
        {
          v26 = *&v1[v24];
          if (!v26)
          {
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

          [v26 applyPendingDisplayedOnValueWithoutSendingActions];
        }
      }

      else if (v9 == 1)
      {
        v15 = OBJC_IVAR___UISwitchDesignLibraryVisualElement_gestureTrackingSession;
        v16 = *&v1[OBJC_IVAR___UISwitchDesignLibraryVisualElement_gestureTrackingSession];
        if (!v16)
        {
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        [v16 reset];
        v17 = *&v1[OBJC_IVAR___UISwitchDesignLibraryVisualElement_feedbackGenerator];
        if (v17)
        {
          [v17 activateWithCompletionBlock_];
        }

        v18 = *&v1[v15];
        if (!v18)
        {
          goto LABEL_44;
        }

        [v18 setPendingDisplayedOnValue:(v1[v11] & 1) == 0 forGesture:*&v1[OBJC_IVAR___UISwitchDesignLibraryVisualElement_longPressGestureRecognizer]];
      }
    }

    else
    {
      v1[OBJC_IVAR___UISwitchDesignLibraryVisualElement_isPressed] = 0;
      v19 = OBJC_IVAR___UISwitchDesignLibraryVisualElement_gestureTrackingSession;
      v20 = *&v1[OBJC_IVAR___UISwitchDesignLibraryVisualElement_gestureTrackingSession];
      if (!v20)
      {
        goto LABEL_38;
      }

      [v20 applyPendingDisplayedOnValueWithoutSendingActions];
      if (v9 == 3)
      {
        v21 = *&v1[v19];
        if (!v21)
        {
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v22 = [v21 canApplyPendingOnValueForGesture_];
        v23 = 0;
        goto LABEL_24;
      }
    }

    v23 = 0;
    v22 = 0;
LABEL_24:
    v30 = [objc_opt_self() gestureIsInEndState_];
    v31 = v30;
    if (v30)
    {
      v1[v13] = 0;
      v32 = *&v1[OBJC_IVAR___UISwitchDesignLibraryVisualElement_gestureTrackingSession];
      if (!v32)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      [v32 applyPendingDisplayedOnValueWithoutSendingActions];
      v33 = *&v1[OBJC_IVAR___UISwitchDesignLibraryVisualElement_feedbackGenerator];
      if (v33)
      {
        v34 = v33;
        if ([v34 isActive])
        {
          [v34 deactivate];
        }
      }

      v22 = 1;
    }

    if (v12 != v1[v11] || v14 != v1[v13])
    {
      sub_188FD3E44(1);
    }

    v35 = UIApp;
    if (UIApp)
    {
      v36 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v37 = swift_allocObject();
      *(v37 + 16) = v36;
      *(v37 + 24) = v22;
      *(v37 + 25) = v31;
      *(v37 + 26) = v23;
      v40[4] = sub_188FD6F00;
      v40[5] = v37;
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 1107296256;
      v40[2] = sub_188A4A8F0;
      v40[3] = &block_descriptor_58_0;
      v38 = _Block_copy(v40);
      v39 = v35;

      [v39 _performAfterCATransactionCommitsWithLegacyRunloopObserverBasedTiming_block_];
      swift_unknownObjectRelease();
      _Block_release(v38);

      return;
    }

    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }
}

void sub_188FD52B8(uint64_t a1, char a2, char a3, char a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a2)
    {
      CFRunLoopRunInMode(*MEMORY[0x1E695E8D0], 0.0, 1u);
      v9 = *&v8[OBJC_IVAR___UISwitchDesignLibraryVisualElement_gestureTrackingSession];
      if (!v9)
      {
        __break(1u);
        goto LABEL_14;
      }

      [v9 applyPendingDisplayedOnValueAndSendActions];
    }

    if ((a3 & 1) == 0)
    {
LABEL_11:

      return;
    }

    if (a4)
    {
      v10 = [v8 switchControl];
      if (!v10)
      {
LABEL_15:
        __break(1u);
        return;
      }

      [v10 visualElementHadTouchUpInside_];
      swift_unknownObjectRelease();
    }

    v11 = *&v8[OBJC_IVAR___UISwitchDesignLibraryVisualElement_gestureTrackingSession];
    if (v11)
    {
      v12 = v11;
      [v12 reset];

      goto LABEL_11;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

id sub_188FD5430(void *a1)
{
  [a1 translationInView_];
  v4 = v3;
  v5 = [a1 state];
  if (v5 != 2)
  {
    result = [objc_opt_self() gestureIsInEndState_];
    if (!result)
    {
      return result;
    }

    result = *(v1 + OBJC_IVAR___UISwitchDesignLibraryVisualElement_gestureTrackingSession);
    if (result)
    {
      v7 = sel_invalidatePendingOnValue;

      return [result v7];
    }

LABEL_14:
    __break(1u);
    return result;
  }

  result = *(v1 + OBJC_IVAR___UISwitchDesignLibraryVisualElement_gestureTrackingSession);
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = [result updatePendingDisplayedOnValueIfMovementIsEnoughToInitiateChange:a1 forGesture:v4];
  if (result)
  {
    v7 = sel_setTranslation_inView_;
    v8 = 0.0;
    v9 = 0.0;
    result = a1;
    v10 = v1;

    return [result v7];
  }

  return result;
}

uint64_t sub_188FD564C(void *a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR___UISwitchDesignLibraryVisualElement_selectGestureRecognizer];
  if (!v3)
  {
    return 1;
  }

  sub_188A34624(0, &unk_1EA930B30, off_1E70E99A0);
  v5 = a1;
  v6 = v3;
  LOBYTE(a1) = sub_18A4A7C88();

  if ((a1 & 1) == 0)
  {
    return 1;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  v9 = v5;
  v10 = [v8 allowedPressTypes];
  sub_188A34624(0, &qword_1ED48FD80, 0x1E696AD98);
  v11 = sub_18A4A7548();

  if (!(v11 >> 62))
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_13:

    goto LABEL_14;
  }

  result = sub_18A4A7F68();
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = sub_188E48F84(0, v11);
LABEL_9:
    v14 = v13;

    v15 = [v14 integerValue];

    if (v15 == 4)
    {
      v16 = [v2 isUserInteractionEnabled];
LABEL_15:

      return v16;
    }

LABEL_14:
    v16 = 1;
    goto LABEL_15;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v11 + 32);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

double sub_188FD5854()
{
  v1 = OBJC_IVAR___UISwitchDesignLibraryVisualElement_selectGestureRecognizer;
  if (!*&v0[OBJC_IVAR___UISwitchDesignLibraryVisualElement_selectGestureRecognizer] && [v0 switchControl])
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      v5 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:sel_selectGestureChanged_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0, &unk_18A64BA50);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_18A64B710;
      v7 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      v8 = v5;
      *(v6 + 32) = [v7 initWithInteger_];
      sub_188A34624(0, &qword_1ED48FD80, 0x1E696AD98);
      v9 = sub_18A4A7518();

      [v8 setAllowedPressTypes_];

      v10 = sub_18A4A7518();
      [v8 setAllowedTouchTypes_];

      [v8 setDelegate_];
      [v4 addGestureRecognizer_];
      swift_unknownObjectRelease();
      v11 = *&v0[v1];
      *&v0[v1] = v8;
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_188FD5A6C(void *a1)
{
  if ([a1 state] == 3 && objc_msgSend(v1, sel_switchControl))
  {
    v3 = OBJC_IVAR___UISwitchDesignLibraryVisualElement_gestureTrackingSession;
    v4 = *&v1[OBJC_IVAR___UISwitchDesignLibraryVisualElement_gestureTrackingSession];
    if (v4)
    {
      [v4 reset];
      v5 = *&v1[v3];
      if (v5)
      {
        [v5 setPendingDisplayedOnValue:(v1[OBJC_IVAR___UISwitchDesignLibraryVisualElement_isOn] & 1) == 0 forGesture:a1];
        v6 = *&v1[v3];
        if (v6)
        {
          [v6 applyPendingDisplayedOnValueWithoutSendingActions];
          v7 = UIApp;
          if (UIApp)
          {
            v8 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v11[4] = sub_188FD6EF8;
            v11[5] = v8;
            v11[0] = MEMORY[0x1E69E9820];
            v11[1] = 1107296256;
            v11[2] = sub_188A4A8F0;
            v11[3] = &block_descriptor_60;
            v9 = _Block_copy(v11);
            v10 = v7;

            [v10 _performAfterCATransactionCommitsWithLegacyRunloopObserverBasedTiming_block_];
            _Block_release(v9);
            swift_unknownObjectRelease();

            return;
          }

LABEL_12:
          __break(1u);
          return;
        }

LABEL_11:
        __break(1u);
        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_188FD5C14(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    CFRunLoopRunInMode(*MEMORY[0x1E695E8D0], 0.0, 1u);
    v3 = OBJC_IVAR___UISwitchDesignLibraryVisualElement_gestureTrackingSession;
    v4 = *&v2[OBJC_IVAR___UISwitchDesignLibraryVisualElement_gestureTrackingSession];
    if (v4)
    {
      [v4 applyPendingDisplayedOnValueAndSendActions];
      v5 = [v2 switchControl];
      if (v5)
      {
        [v5 visualElementHadTouchUpInside_];
        swift_unknownObjectRelease();
        v6 = *&v2[v3];
        if (v6)
        {
          [v6 reset];

          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }
}

id sub_188FD5D60(void *a1, id a2)
{
  if ([a2 type])
  {
    return [a1 _shouldReceiveEvent_];
  }

  v6 = OBJC_IVAR___UISwitchDesignLibraryVisualElement_longPressGestureRecognizer;
  v7 = *(v2 + OBJC_IVAR___UISwitchDesignLibraryVisualElement_longPressGestureRecognizer);
  if (!v7)
  {
    return [a1 _shouldReceiveEvent_];
  }

  sub_188A34624(0, &unk_1EA930B30, off_1E70E99A0);
  v8 = a1;
  v9 = v7;
  v10 = v2;
  v11 = sub_18A4A7C88();

  if ((v11 & 1) == 0)
  {
    return [a1 _shouldReceiveEvent_];
  }

  v12 = [a2 allTouches];
  if (!v12)
  {
    return [a1 _shouldReceiveEvent_];
  }

  v13 = v12;
  sub_188A34624(0, &qword_1EA9342F0, off_1E70EAB90);
  sub_188E405E8();
  v14 = sub_18A4A77A8();

  v15 = (v14 & 0xC000000000000001) != 0 ? sub_18A4A7F68() : *(v14 + 16);

  if (v15 != 1)
  {
    return [a1 _shouldReceiveEvent_];
  }

  v16 = [a2 allTouches];
  if (!v16)
  {
    return [a1 _shouldReceiveEvent_];
  }

  v17 = v16;
  v18 = sub_18A4A77A8();

  v19 = sub_189072794(v18);

  if (!v19)
  {
    return [a1 _shouldReceiveEvent_];
  }

  v20 = [v19 _isPointerTouch];

  if (!v20)
  {
    return [a1 _shouldReceiveEvent_];
  }

  result = *(v10 + v6);
  if (result)
  {
    [result setMinimumPressDuration_];
    return [a1 _shouldReceiveEvent_];
  }

  __break(1u);
  return result;
}

id sub_188FD6098(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UISwitchDesignLibraryVisualElement();
  v6.receiver = v2;
  v6.super_class = v4;
  return objc_msgSendSuper2(&v6, sel_dealloc, v3);
}

void sub_188FD6258(char a1)
{
  v2 = a1 & 1;
  if (v1[OBJC_IVAR___UISwitchDesignLibraryVisualElement_isOn] != v2)
  {
    [v1 setOn:v2 animated:{objc_msgSend(objc_opt_self(), sel_areAnimationsEnabled)}];
    v3 = *&v1[OBJC_IVAR___UISwitchDesignLibraryVisualElement_feedbackGenerator];
    if (v3)
    {
      v6 = v3;
      [v1 center];
      [v6 impactOccurredWithIntensity:1.0 atLocation:{v4, v5}];
    }
  }
}

uint64_t sub_188FD6398@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DesignLibrarySwitch(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = dyld_program_sdk_at_least() ^ 1;
  v9 = *(v5 + 28);
  v10 = sub_18A4A2D68();
  v11 = MEMORY[0x1EEE9AC00](v10);
  (*(v13 + 16))(&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v2 + v9, v11);
  sub_188FD6D38(v2, &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v15 = swift_allocObject();
  sub_188FD6D9C(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  type metadata accessor for KnobView(0);
  sub_188FD6EA0();
  sub_18A4A3198();
  sub_18A4A31A8();
  KeyPath = swift_getKeyPath();
  v17 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9394D0, &unk_18A65A150) + 36));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9394D8, &qword_18A666B20);
  sub_1890534C0(v17 + *(v18 + 28));
  *v17 = KeyPath;
  v19 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9394E0, &unk_18A65A190);
  v21 = a1 + *(result + 36);
  *v21 = v19;
  *(v21 + 8) = v8;
  return result;
}

uint64_t sub_188FD6610@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for DesignLibrarySwitch(0) + 20);
  v7 = sub_18A4A2D68();
  (*(*(v7 - 8) + 16))(a3, a2 + v6, v7);
  result = type metadata accessor for KnobView(0);
  *(a3 + *(result + 20)) = a1;
  return result;
}

id sub_188FD669C()
{
  type metadata accessor for _UISwitchDesignLibraryKnobView(0);
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void sub_188FD66D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v7 = sub_18A4A2D68();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v5, v8);
  sub_189195464(v10);
  v12 = *(v5 + *(a3 + 20));
  v13 = *(a1 + OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_isAnimating);
  *(a1 + OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_isAnimating) = v12;
  if (v12 != v13)
  {
    sub_189195EDC(0);
  }
}

uint64_t sub_188FD67D0(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939528, &qword_18A65A238);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  result = AGTypeGetKind();
  if ((result - 6) < 0xFFFFFFFC)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA939518, &qword_18A65A230);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA939530, &unk_18A65A240);
    sub_18A4A44D8();
    AGGraphCreateOffsetAttribute2();
    sub_18A4A44F8();
    sub_188A34360(&qword_1EA92F910, &unk_1EA939518, &qword_18A65A230, &unk_18A674048);
    sub_18A4A5608();
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_188FD6978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA939518, &qword_18A65A230);
  sub_188A34360(&qword_1EA92F910, &unk_1EA939518, &qword_18A65A230, &unk_18A674048);
  return sub_18A4A5618();
}

id sub_188FD6AC4(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = type metadata accessor for UISwitchDesignLibraryVisualElement();
  v10.receiver = a1;
  v10.super_class = v8;
  return objc_msgSendSuper2(&v10, *a4, a3, v7);
}

uint64_t sub_188FD6BCC(uint64_t a1)
{
  result = sub_18A4A2D68();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_188FD6C50(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_188FD6CAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_188FD6D38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DesignLibrarySwitch(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_188FD6D9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DesignLibrarySwitch(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_188FD6E00@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DesignLibrarySwitch(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_188FD6610(a1, v6, a2);
}

unint64_t sub_188FD6EA0()
{
  result = qword_1EA92F848;
  if (!qword_1EA92F848)
  {
    type metadata accessor for KnobView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92F848);
  }

  return result;
}

void sub_188FD6F14(void *a1)
{
  v3 = OBJC_IVAR___UISwitchDesignLibraryVisualElement_coreHostingView;
  v4 = *&v1[OBJC_IVAR___UISwitchDesignLibraryVisualElement_coreHostingView];
  *&v1[OBJC_IVAR___UISwitchDesignLibraryVisualElement_coreHostingView] = a1;
  v9 = v4;
  if (v4)
  {
    v5 = a1;
    [v9 removeFromSuperview];
    a1 = *&v1[v3];
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = a1;
  if (a1)
  {
LABEL_3:
    v6 = a1;
    v7 = [v6 layer];
    [v1 _currentScreenScale];
    [v7 setContentsScale_];

    [v1 addSubview_];
  }

LABEL_4:
  [v1 setNeedsLayout];
}

uint64_t sub_188FD7004(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DesignLibrarySwitch(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_188FD7068(uint64_t a1)
{
  v2 = type metadata accessor for DesignLibrarySwitch(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_188FD70C4()
{
  v1 = OBJC_IVAR___UISwitchDesignLibraryVisualElement_selectGestureRecognizer;
  v2 = *&v0[OBJC_IVAR___UISwitchDesignLibraryVisualElement_selectGestureRecognizer];
  if (!v2)
  {
    return result;
  }

  v6 = v2;
  if (![v0 switchControl])
  {
    v4 = v6;
    goto LABEL_7;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    [v3 removeGestureRecognizer_];

    swift_unknownObjectRelease();
    v4 = *&v0[v1];
    *&v0[v1] = 0;
LABEL_7:

    return result;
  }

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_188FD71F0(uint64_t a1)
{
  result = sub_18A4A2D68();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_188FD7264()
{
  result = qword_1EA92F818;
  if (!qword_1EA92F818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA9394E0, &unk_18A65A190);
    sub_188FD731C();
    sub_188A34360(&unk_1EA92F7F0, &qword_1EA939510, qword_18A65A1B8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92F818);
  }

  return result;
}

unint64_t sub_188FD731C()
{
  result = qword_1EA92F820;
  if (!qword_1EA92F820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9394D0, &unk_18A65A150);
    sub_188FD73D4();
    sub_188A34360(&qword_1EA92F800, &qword_1EA9394D8, &qword_18A666B20, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92F820);
  }

  return result;
}

unint64_t sub_188FD73D4()
{
  result = qword_1EA92FAA8;
  if (!qword_1EA92FAA8)
  {
    sub_18A4A31B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92FAA8);
  }

  return result;
}

unint64_t sub_188FD7420(uint64_t a1)
{
  result = sub_188FD6EA0();
  *(a1 + 8) = result;
  return result;
}

__n128 __swift_memcpy82_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_188FD7494(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 82))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 81);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_188FD74D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 82) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 82) = 0;
    }

    if (a2)
    {
      *(result + 81) = a2 + 1;
    }
  }

  return result;
}

void UIView._addLayoutRule<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_188FD7FC4(a1, a2, a3, &unk_1EFAD5CD8, sub_188FD78F0, &block_descriptor_61);
}

{
  sub_188FD7FC4(a1, a2, a3, &unk_1EFAD5D28, sub_188FD966C, &block_descriptor_6_6);
}

{
  sub_188FD7FC4(a1, a2, a3, &unk_1EFAD5D78, sub_188FD9678, &block_descriptor_12_5);
}

{
  sub_188FD7FC4(a1, a2, a3, &unk_1EFAD5DC8, sub_188FD96C0, &block_descriptor_18_5);
}

{
  sub_188FD7FC4(a1, a2, a3, &unk_1EFAD5E18, sub_188FD96CC, &block_descriptor_24_1);
}

{
  sub_188FD7FC4(a1, a2, a3, &unk_1EFAD5E68, sub_188FD9714, &block_descriptor_30_2);
}

{
  sub_188FD7FC4(a1, a2, a3, &unk_1EFAD5EB8, sub_188FD9720, &block_descriptor_36);
}

{
  sub_188FD7FC4(a1, a2, a3, &unk_1EFAD5F08, sub_188FD972C, &block_descriptor_42);
}

uint64_t sub_188FD756C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(v3 + 24);
  v4(a1, v3);
  v5 = sub_18A4A7358();

  if (v5 >= 1)
  {
    return (v4)(a1, v3);
  }

  swift_getMetatypeMetadata();
  v7 = sub_18A4A72F8();
  MEMORY[0x18CFE22D0](v7);

  MEMORY[0x18CFE22D0](2108704, 0xE300000000000000);
  v8 = sub_18A4A7228();
  MEMORY[0x18CFE22D0](v8);

  MEMORY[0x18CFE22D0](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_188FD7680(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a2;
  v8 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v18 - v11;
  v23 = &type metadata for _UILayoutRuleEvaluationContext;
  v24 = &off_1EFAD61F0;
  v22[0] = a1;
  v13 = *(a5 + 16);
  swift_unknownObjectRetain_n();
  v13(v22, a4, a5);
  __swift_destroy_boxed_opaque_existential_0Tm(v22);
  v23 = AssociatedTypeWitness;
  __swift_allocate_boxed_opaque_existential_0(v22);
  (*(v10 + 16))();
  sub_188A55598(v22, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050, qword_18A64CA10);
  swift_dynamicCast();
  *v20 = *&v20[5];
  *&v20[2] = v21;
  v14 = *(&v21 + 1);
  sub_188A553EC(v20);
  if (v14)
  {
    v15 = sub_18A4A86A8();
  }

  else
  {
    v15 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v22);
  sub_188E18C48(a4, v8);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93E970, &unk_18A651030);
  v16 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v19 _setObject_forTraitToken_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return (*(v10 + 8))(v12, AssociatedTypeWitness);
}

void sub_188FD7924(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[0] = a1;
  v11[3] = &type metadata for _UILayoutRuleEvaluationContext;
  v11[4] = &off_1EFAD61F0;
  v8 = *(a5 + 16);
  swift_unknownObjectRetain_n();
  v8(&v12, v11, a4, a5);
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  v9 = v12;
  sub_188E197B0(a4, *(a5 + 8));
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939088, &unk_18A657B60);
  v10 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [a2 _setCGFloatValue_forTraitToken_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void sub_188FD7A8C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[0] = a1;
  v11[3] = &type metadata for _UILayoutRuleEvaluationContext;
  v11[4] = &off_1EFAD61F0;
  v8 = *(a5 + 16);
  swift_unknownObjectRetain_n();
  v8(&v12, v11, a4, a5);
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  v9 = v12;
  sub_188E19808(a4, *(a5 + 8));
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939088, &unk_18A657B60);
  v10 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [a2 _setCGFloatValue_forTraitToken_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void sub_188FD7BCC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, double (*a6)(uint64_t, void, uint64_t, uint64_t, double), uint64_t (*a7)(uint64_t, uint64_t))
{
  v17[3] = &type metadata for _UILayoutRuleEvaluationContext;
  v17[4] = &off_1EFAD61F0;
  v17[0] = a1;
  v12 = *(a5 + 16);
  swift_unknownObjectRetain_n();
  v12(&v18, v17, a4, a5);
  v13 = __swift_destroy_boxed_opaque_existential_0Tm(v17);
  v14 = *(a5 + 8);
  v15 = a6(v18, v19, a4, v14, v13);
  a7(a4, v14);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939088, &unk_18A657B60);
  v16 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [a2 _setCGFloatValue_forTraitToken_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

double sub_188FD7D3C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a1;
  v12[3] = &type metadata for _UILayoutRuleEvaluationContext;
  v12[4] = &off_1EFAD61F0;
  v8 = *(a5 + 16);
  swift_unknownObjectRetain_n();
  v8(&v13, v12, a4, a5);
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  v9 = v13;
  sub_188E199EC(a4, *(a5 + 8));
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934860, &qword_18A65FA90);
  v10 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [a2 _setNSIntegerValue_forTraitToken_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return result;
}

double sub_188FD7E74(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a1;
  v13[3] = &type metadata for _UILayoutRuleEvaluationContext;
  v13[4] = &off_1EFAD61F0;
  v8 = *(a5 + 16);
  swift_unknownObjectRetain_n();
  v8(&v14, v13, a4, a5);
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  v9 = *(a5 + 8);
  v10 = sub_188E19D84(v14, v15);
  sub_188E19B94(a4, v9);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934860, &qword_18A65FA90);
  v11 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [a2 _setNSIntegerValue_forTraitToken_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return result;
}

void sub_188FD7FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = v6;
  sub_188FD756C(a2, a3);
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a1;
  v14 = objc_allocWithZone(_UILayoutRuleRegistration);
  v15 = sub_18A4A7258();

  v18[4] = a5;
  v18[5] = v13;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_188FD95F0;
  v18[3] = a6;
  v16 = _Block_copy(v18);
  v17 = [(_UILayoutRuleRegistration *)v14 initWithIdentifier:v15 evaluationHandler:v16];

  _Block_release(v16);

  [v9 _addLayoutRuleRegistration_];
}

double sub_188FD8108(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a1;
  v13[3] = &type metadata for _UILayoutRuleEvaluationContext;
  v13[4] = &off_1EFAD61F0;
  v8 = *(a5 + 16);
  swift_unknownObjectRetain_n();
  v8(&v14, v13, a4, a5);
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  v9 = *(a5 + 8);
  v10 = sub_188E19DF4(v14);
  sub_188E19DD4(a4, v9);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934860, &qword_18A65FA90);
  v11 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [a2 _setNSIntegerValue_forTraitToken_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return result;
}

void UIView._addLayoutRule<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_188FD924C(a1, a2, a3, a4, &unk_1EFAD5F58, sub_188FD9738, &block_descriptor_48_1);
}

{
  sub_188FD924C(a1, a2, a3, a4, &unk_1EFAD5FA8, sub_188FD9744, &block_descriptor_54_1);
}

{
  sub_188FD924C(a1, a2, a3, a4, &unk_1EFAD5FF8, sub_188FD9750, &block_descriptor_60_0);
}

{
  sub_188FD924C(a1, a2, a3, a4, &unk_1EFAD6048, sub_188FD975C, &block_descriptor_66_2);
}

{
  sub_188FD924C(a1, a2, a3, a4, &unk_1EFAD6098, sub_188FD9768, &block_descriptor_72_3);
}

{
  sub_188FD924C(a1, a2, a3, a4, &unk_1EFAD60E8, sub_188FD9774, &block_descriptor_78_1);
}

{
  sub_188FD924C(a1, a2, a3, a4, &unk_1EFAD6138, sub_188FD9780, &block_descriptor_84_2);
}

{
  sub_188FD924C(a1, a2, a3, a4, &unk_1EFAD6188, sub_188FD978C, &block_descriptor_90_0);
}

uint64_t sub_188FD8254(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v19 - v11;
  v24 = &type metadata for _UILayoutRuleEvaluationContext;
  v25 = &off_1EFAD61F0;
  v23[0] = a1;
  v13 = *(a5 + 16);
  swift_unknownObjectRetain_n();
  v13(v23, a4, a5);
  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  v14 = *(a6 + 24);
  v24 = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0(v23);
  v14(v12, a4, a6);
  sub_188A55598(v23, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050, qword_18A64CA10);
  swift_dynamicCast();
  *v21 = *&v21[5];
  *&v21[2] = v22;
  v15 = *(&v22 + 1);
  sub_188A553EC(v21);
  if (v15)
  {
    v16 = sub_18A4A86A8();
  }

  else
  {
    v16 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  sub_188E19DFC(a4, a6);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93E970, &unk_18A651030);
  v17 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v19 _setObject_forTraitToken_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return (*(v10 + 8))(v12, AssociatedTypeWitness);
}

uint64_t sub_188FD8518(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v20[-1] - v12;
  v20[3] = &type metadata for _UILayoutRuleEvaluationContext;
  v20[4] = &off_1EFAD61F0;
  v20[0] = a1;
  v14 = *(a5 + 16);
  swift_unknownObjectRetain_n();
  v14(v20, a4, a5);
  v15 = __swift_destroy_boxed_opaque_existential_0Tm(v20);
  (*(a6 + 24))(v20, v13, a4, a6, v15);
  v16 = *v20;
  sub_188E19E1C(a4, a6);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939088, &unk_18A657B60);
  v17 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v19 _setCGFloatValue_forTraitToken_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return (*(v11 + 8))(v13, AssociatedTypeWitness);
}

uint64_t sub_188FD8730(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v20[-1] - v12;
  v20[3] = &type metadata for _UILayoutRuleEvaluationContext;
  v20[4] = &off_1EFAD61F0;
  v20[0] = a1;
  v14 = *(a5 + 16);
  swift_unknownObjectRetain_n();
  v14(v20, a4, a5);
  v15 = __swift_destroy_boxed_opaque_existential_0Tm(v20);
  (*(a6 + 24))(v20, v13, a4, a6, v15);
  v16 = *v20;
  sub_188E1A090(a4, a6);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939088, &unk_18A657B60);
  v17 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v19 _setCGFloatValue_forTraitToken_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return (*(v11 + 8))(v13, AssociatedTypeWitness);
}

uint64_t sub_188FD8948(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v20[-1] - v12;
  v20[3] = &type metadata for _UILayoutRuleEvaluationContext;
  v20[4] = &off_1EFAD61F0;
  v20[0] = a1;
  v14 = *(a5 + 16);
  swift_unknownObjectRetain_n();
  v14(v20, a4, a5);
  v15 = __swift_destroy_boxed_opaque_existential_0Tm(v20);
  (*(a6 + 24))(v20, v13, a4, a6, v15);
  v16 = v20[0];
  sub_188E1A0B0(a4, a6);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934860, &qword_18A65FA90);
  v17 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v19 _setNSIntegerValue_forTraitToken_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return (*(v11 + 8))(v13, AssociatedTypeWitness);
}

uint64_t sub_188FD8B58(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a2;
  v10 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v19 - v12;
  v26 = &type metadata for _UILayoutRuleEvaluationContext;
  v27 = &off_1EFAD61F0;
  v25[0] = a1;
  v14 = *(a5 + 16);
  v21 = a1;
  swift_unknownObjectRetain_n();
  v14(v25, a4, a5);
  __swift_destroy_boxed_opaque_existential_0Tm(v25);
  v22 = AssociatedTypeWitness;
  v26 = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0(v25);
  sub_188E18BC8();
  sub_188A55598(v25, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050, qword_18A64CA10);
  swift_dynamicCast();
  *v23 = *&v23[5];
  *&v23[2] = v24;
  v15 = *(&v24 + 1);
  sub_188A553EC(v23);
  if (v15)
  {
    v16 = sub_18A4A86A8();
  }

  else
  {
    v16 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v25);
  sub_188E1A328(a4, v10, a6);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93E970, &unk_18A651030);
  v17 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v19 _setObject_forTraitToken_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return (*(v20 + 8))(v13, v22);
}

uint64_t sub_188FD8E24(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a2;
  v10 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v18 - v12;
  v21[3] = &type metadata for _UILayoutRuleEvaluationContext;
  v21[4] = &off_1EFAD61F0;
  v21[0] = a1;
  v14 = *(a5 + 16);
  swift_unknownObjectRetain_n();
  v14(v21, a4, a5);
  __swift_destroy_boxed_opaque_existential_0Tm(v21);
  sub_188E18BC8();
  v15 = *v21;
  sub_188E1A65C(a4, v10, a6);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939088, &unk_18A657B60);
  v16 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v19 _setCGFloatValue_forTraitToken_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return (*(v11 + 8))(v13, AssociatedTypeWitness);
}

uint64_t sub_188FD9038(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a2;
  v10 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v18 - v12;
  v21[3] = &type metadata for _UILayoutRuleEvaluationContext;
  v21[4] = &off_1EFAD61F0;
  v21[0] = a1;
  v14 = *(a5 + 16);
  swift_unknownObjectRetain_n();
  v14(v21, a4, a5);
  __swift_destroy_boxed_opaque_existential_0Tm(v21);
  sub_188E18BC8();
  v15 = *v21;
  sub_188E1A8D0(a4, v10, a6);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939088, &unk_18A657B60);
  v16 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v19 _setCGFloatValue_forTraitToken_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return (*(v11 + 8))(v13, AssociatedTypeWitness);
}

void sub_188FD924C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = v7;
  sub_188FD756C(a2, a3);
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = a1;
  v16 = objc_allocWithZone(_UILayoutRuleRegistration);
  v17 = sub_18A4A7258();

  v20[4] = a6;
  v20[5] = v15;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1107296256;
  v20[2] = sub_188FD95F0;
  v20[3] = a7;
  v18 = _Block_copy(v20);
  v19 = [(_UILayoutRuleRegistration *)v16 initWithIdentifier:v17 evaluationHandler:v18];

  _Block_release(v18);

  [v10 _addLayoutRuleRegistration_];
}

uint64_t sub_188FD9394(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a2;
  v10 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v18 - v12;
  v21[3] = &type metadata for _UILayoutRuleEvaluationContext;
  v21[4] = &off_1EFAD61F0;
  v21[0] = a1;
  v14 = *(a5 + 16);
  swift_unknownObjectRetain_n();
  v14(v21, a4, a5);
  __swift_destroy_boxed_opaque_existential_0Tm(v21);
  sub_188E18BC8();
  v15 = v21[0];
  sub_188E1A8F0(a4, v10, a6);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934860, &qword_18A65FA90);
  v16 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v19 _setNSIntegerValue_forTraitToken_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return (*(v11 + 8))(v13, AssociatedTypeWitness);
}

id sub_188FD9588()
{
  v1 = [*v0 traitCollection];

  return v1;
}

double sub_188FD95F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v5(a2, a3);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return result;
}

uint64_t static _UISceneHostGeometrySceneExtension.hostComponents()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9395A0, &unk_18A666F00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18A64BFB0;
  type metadata accessor for _UISceneHostGeometryHostComponent();
  *(v0 + 32) = v1;
  return v0;
}

_UISceneHostGeometrySceneExtension __swiftcall _UISceneHostGeometrySceneExtension.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for _UISceneHostGeometrySceneExtension()
{
  result = qword_1EA9395A8;
  if (!qword_1EA9395A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9395A8);
  }

  return result;
}

void sub_188FD9A18(unint64_t a1, void *a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_18A4A7F68())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = sub_188E49F28(v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      sub_188FDB348(&v12, a2, a3);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_188FD9B18(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_18A4A7F68())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_188E49F28(v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_188FD9C18()
{
  type metadata accessor for _UIIntelligenceCommandManager();
  v0 = swift_allocObject();
  type metadata accessor for _UIIntelligenceCommandManager.IntelligenceCommandCache(0);
  v1 = swift_allocObject();
  result = sub_18A4A3F58();
  *(v1 + OBJC_IVAR____TtCC5UIKit29_UIIntelligenceCommandManagerP33_027C523F92F121A6DBA25987CE370D9F24IntelligenceCommandCache__lastFetchedCommands) = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCC5UIKit29_UIIntelligenceCommandManagerP33_027C523F92F121A6DBA25987CE370D9F24IntelligenceCommandCache__commandIdentifierToMenuLeafMap) = MEMORY[0x1E69E7CC8];
  *(v0 + 16) = v1;
  qword_1EA9395C0 = v0;
  return result;
}

double static _UIIntelligenceCommandManager.shared.getter()
{
  if (qword_1EA931DA8 != -1)
  {
    swift_once();
  }

  return result;
}

double _UIIntelligenceCommandManager.fetchCommands(options:)(uint64_t a1, __n128 a2)
{
  sub_188FDE8C0(a1, a2);

  return result;
}

uint64_t sub_188FD9D60(uint64_t a1)
{
  v2 = sub_188FDEAC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_188FD9D9C(uint64_t a1)
{
  v2 = sub_188FDEAC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _UIIntelligenceCommandManager.RunCompletionContext.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9395C8, &qword_18A65A360);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_188FDEAC4();
  sub_18A4A89C8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_188FD9F78(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9395C8, &qword_18A65A360);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_188FDEAC4();
  sub_18A4A89C8();
  return (*(v3 + 8))(v5, v2);
}

unint64_t _UIIntelligenceCommandManager.CommandExecutionError.description.getter()
{
  if (*v0)
  {
    v1 = 0xD000000000000019;
  }

  else
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = "etrySceneExtension";
  }

  else
  {
    v2 = "CommandExecutionError(";
  }

  sub_18A4A80E8();

  MEMORY[0x18CFE22D0](v1, v2 | 0x8000000000000000);

  MEMORY[0x18CFE22D0](10530, 0xE200000000000000);
  return 0xD000000000000017;
}

uint64_t _UIIntelligenceCommandManager.CommandExecutionError.hashValue.getter()
{
  v1 = *v0;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](v1);
  return sub_18A4A88E8();
}

uint64_t _UIIntelligenceCommandManager.run(_:)(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  sub_18A4A76A8();
  v3[12] = sub_18A4A7698();
  v5 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_188FDA274, v5, v4);
}

void *sub_188FDA274()
{
  v1 = sub_188FDA520();
  if (!v1)
  {

    sub_188FDEB18();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
LABEL_10:
    v5 = *(v0 + 8);
    goto LABEL_11;
  }

  v2 = v1;
  if ([v1 attributes])
  {

    sub_188FDEB18();
    swift_allocError();
    *v7 = 1;
    swift_willThrow();
LABEL_9:

    goto LABEL_10;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {

      goto LABEL_5;
    }

    if (!UIApp)
    {
      __break(1u);
      return result;
    }

    v9 = result;
    v10 = UIApp;
    v2 = v2;

    v11 = [v10 _responderForKeyEvents];

    if (v11)
    {
      if ([v9 _resolvedTargetFromFirstTarget_sender_])
      {
        sub_18A4A7DE8();
        swift_unknownObjectRelease();
        sub_188A55538((v0 + 48), (v0 + 16));
        __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
        [v9 performWithSender:0 target:sub_18A4A86A8()];

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
        goto LABEL_6;
      }
    }

    sub_188FDEB18();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();

    goto LABEL_9;
  }

  v4 = v3;

  [v4 performWithSender:0 target:0];
LABEL_5:

LABEL_6:
  v5 = *(v0 + 8);
LABEL_11:

  return v5();
}

void *sub_188FDA520()
{
  v1 = v0;
  v2 = sub_18A4A3538();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A3548();
  v6 = OBJC_IVAR____TtCC5UIKit29_UIIntelligenceCommandManagerP33_027C523F92F121A6DBA25987CE370D9F24IntelligenceCommandCache__commandIdentifierToMenuLeafMap;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (*(v7 + 16) && (v8 = sub_188E8BB38(v5), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    v11 = v10;
  }

  else
  {
    v10 = 0;
  }

  swift_endAccess();
  (*(v3 + 8))(v5, v2);
  return v10;
}

void sub_188FDA648(void *a1, uint64_t a2, char *a3)
{
  v71 = sub_18A4A3538();
  v67 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v82 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_18A4A3658();
  v70 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934408, &unk_18A65A670);
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v83 = (&v66 - v9);
  v10 = OBJC_IVAR____TtCC5UIKit29_UIIntelligenceCommandManagerP33_027C523F92F121A6DBA25987CE370D9F24IntelligenceCommandCache__options;
  swift_beginAccess();
  v11 = sub_18A4A3F68();
  (*(*(v11 - 8) + 24))(v3 + v10, a2, v11);
  swift_endAccess();
  v12 = OBJC_IVAR____TtCC5UIKit29_UIIntelligenceCommandManagerP33_027C523F92F121A6DBA25987CE370D9F24IntelligenceCommandCache__lastFetchedCommands;
  swift_beginAccess();
  v13 = MEMORY[0x1E69E7CC0];
  v81 = v12;
  *(v3 + v12) = MEMORY[0x1E69E7CC0];

  v14 = OBJC_IVAR____TtCC5UIKit29_UIIntelligenceCommandManagerP33_027C523F92F121A6DBA25987CE370D9F24IntelligenceCommandCache__commandIdentifierToMenuLeafMap;
  swift_beginAccess();
  v84 = v3;
  v78 = v14;
  *(v3 + v14) = MEMORY[0x1E69E7CC8];

  v92 = v13;
  type metadata accessor for MenuGroupIterator();
  v77 = swift_allocObject();
  *(v77 + 16) = 1;
  v15 = [a1 children];
  sub_188FDEE50();
  v16 = sub_18A4A7548();

  if (v16 >> 62)
  {
LABEL_40:
    v73 = v16 & 0xFFFFFFFFFFFFFF8;
    v76 = sub_18A4A7F68();
  }

  else
  {
    v73 = v16 & 0xFFFFFFFFFFFFFF8;
    v76 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v74 = v16 & 0xC000000000000001;
  v72 = &v88;
  v75 = a3;

  v17 = 0;
  while (v76 != v17)
  {
    if (v74)
    {
      v18 = sub_188E49F28(v17, v16);
    }

    else
    {
      if (v17 >= *(v73 + 16))
      {
        goto LABEL_34;
      }

      v18 = *(v16 + 8 * v17 + 32);
    }

    v19 = v18;
    if (__OFADD__(v17, 1))
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
      goto LABEL_40;
    }

    v20 = swift_allocObject();
    v21 = MEMORY[0x1E69E7CC0];
    v20[2] = MEMORY[0x1E69E7CC0];
    v20[3] = &v92;
    v22 = v75;
    v85 = v19;
    v23 = v77;
    v20[4] = v75;
    v20[5] = v23;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_188FDEE9C;
    *(v24 + 24) = v20;
    v90 = sub_188E36B9C;
    v91 = v24;
    aBlock = MEMORY[0x1E69E9820];
    v87 = 1107296256;
    v88 = sub_188FDF218;
    v89 = &block_descriptor_62;
    v25 = _Block_copy(&aBlock);
    v26 = v22;

    v27 = swift_allocObject();
    v27[2] = v21;
    v27[3] = 1;
    v27[4] = v26;
    v27[5] = &v92;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_188FDEEA8;
    *(v28 + 24) = v27;
    v90 = sub_188A86D18;
    v91 = v28;
    aBlock = MEMORY[0x1E69E9820];
    v87 = 1107296256;
    v88 = sub_188FDF218;
    v89 = &block_descriptor_39_2;
    v29 = _Block_copy(&aBlock);
    v30 = v26;

    a3 = v85;

    [a3 _acceptMenuVisit_leafVisit_];
    _Block_release(v29);
    _Block_release(v25);

    LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

    if (v29)
    {
      goto LABEL_35;
    }

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    ++v17;
    if (isEscapingClosureAtFileLocation)
    {
      goto LABEL_36;
    }
  }

  v32 = v92;
  v85 = *(v92 + 16);
  if (v85)
  {
    v33 = 0;
    v76 = (v70 + 16);
    v77 = v70 + 32;
    v74 = v67 + 16;
    v75 = (v67 + 8);
    v34 = &qword_1EA934408;
    v35 = &unk_18A65A670;
    while (1)
    {
      if (v33 >= *(v32 + 16))
      {
        goto LABEL_37;
      }

      v38 = v83;
      v39 = v34;
      v40 = v35;
      sub_188A3F29C(v32 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v33, v83, v34, v35);
      v41 = *v38;
      (*v76)(v79, v38 + *(v69 + 48), v80);
      v42 = v84;
      v43 = v81;
      swift_beginAccess();
      v44 = *(v42 + v43);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v42 + v43) = v44;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v64 = v44[2];

        v65 = sub_188E4C4EC(0, v64 + 1, 1, v44);
        *(v84 + v81) = v65;

        v44 = v65;
      }

      v47 = v44[2];
      v46 = v44[3];
      if (v47 >= v46 >> 1)
      {
        v44 = sub_188E4C4EC((v46 > 1), v47 + 1, 1, v44);
      }

      v44[2] = v47 + 1;
      (*(v70 + 32))(v44 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v47, v79, v80);
      v48 = v84;
      *(v84 + v81) = v44;
      swift_endAccess();
      v49 = v82;
      sub_18A4A3548();
      a3 = v78;
      swift_beginAccess();
      v50 = v41;
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v92 = *&a3[v48];
      v51 = v92;
      *&a3[v48] = 0x8000000000000000;
      v52 = sub_188E8BB38(v49);
      v54 = *(v51 + 16);
      v55 = (v53 & 1) == 0;
      v56 = __OFADD__(v54, v55);
      v57 = v54 + v55;
      if (v56)
      {
        goto LABEL_38;
      }

      v58 = v53;
      if (*(v51 + 24) < v57)
      {
        break;
      }

      if (v16)
      {
        goto LABEL_27;
      }

      v16 = v52;
      sub_188FA4D5C();
      v52 = v16;
      v60 = v92;
      if (v58)
      {
LABEL_15:
        v36 = v60[7];
        v37 = *(v36 + 8 * v52);
        *(v36 + 8 * v52) = v50;

        goto LABEL_16;
      }

LABEL_28:
      v60[(v52 >> 6) + 8] |= 1 << v52;
      v61 = v52;
      (*(v67 + 16))(v60[6] + *(v67 + 72) * v52, v82, v71);
      *(v60[7] + 8 * v61) = v50;
      v62 = v60[2];
      v56 = __OFADD__(v62, 1);
      v63 = v62 + 1;
      if (v56)
      {
        goto LABEL_39;
      }

      v60[2] = v63;
LABEL_16:
      ++v33;
      (*v75)(v82, v71);
      *&v78[v84] = v60;
      swift_endAccess();
      v34 = v39;
      v35 = v40;
      sub_188A3F5FC(v83, v39, v40);
      if (v85 == v33)
      {
        goto LABEL_32;
      }
    }

    sub_1890BED48(v57, v16);
    v52 = sub_188E8BB38(v82);
    if ((v58 & 1) != (v59 & 1))
    {
      sub_18A4A87A8();
      __break(1u);
      return;
    }

LABEL_27:
    v60 = v92;
    if (v58)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

LABEL_32:
}

uint64_t sub_188FDB098(__n128 a1)
{
  v2 = OBJC_IVAR____TtCC5UIKit29_UIIntelligenceCommandManagerP33_027C523F92F121A6DBA25987CE370D9F24IntelligenceCommandCache__options;
  v3 = sub_18A4A3F68();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return swift_deallocClassInstance();
}

void sub_188FDB154(void *a1, uint64_t a2, void *a3)
{
  v4 = [a1 keyCommand];
  if (v4)
  {
    v5 = v4;
    MEMORY[0x18CFE2450]();
    if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18A4A7588();
    }

    sub_18A4A75F8();
  }
}

id sub_188FDB204()
{
  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_188E8EF14(MEMORY[0x1E69E7CC0]);
  v1 = [v0 children];
  sub_188FDEE50();
  v2 = sub_18A4A7548();

  sub_188FD9A18(v2, &v7, &v6);

  v3 = sub_18A4A7518();
  v4 = [v0 menuByReplacingChildren_];

  return v4;
}

uint64_t _UIIntelligenceCommandManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_188FDB348(void **a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = [v6 _enumerationPriority];
  }

  else
  {
    v7 = 0;
  }

  v8 = *a2;
  if (!*(*a2 + 16) || (v9 = sub_188B85570(v7), (v10 & 1) == 0) || (v11 = *(v8[7] + 8 * v9), , v12 = sub_18907FA90(v5, v11), , (v12 & 1) == 0))
  {
    v13 = *a2;
    if (*(*a2 + 16) && (v14 = sub_188B85570(v7), (v15 & 1) != 0))
    {
      aBlock = *(v13[7] + 8 * v14);
      v16 = v5;

      sub_188E71650(&v37, v16);

      v17 = aBlock;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *a2;
      *a2 = 0x8000000000000000;
      sub_188E9FF48(v17, v7, isUniquelyReferenced_nonNull_native);
      v19 = v37;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0, &unk_18A64BA50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18A64B710;
      *(inited + 32) = v5;
      v21 = v5;
      sub_188FBF9F8(inited);
      v23 = v22;
      swift_setDeallocating();
      swift_arrayDestroy();
      v24 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = *a2;
      *a2 = 0x8000000000000000;
      sub_188E9FF48(v23, v7, v24);
      v19 = aBlock;
    }

    *a2 = v19;
    v25 = swift_allocObject();
    *(v25 + 16) = a2;
    *(v25 + 24) = a3;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_188FDF1E0;
    *(v26 + 24) = v25;
    v35 = sub_188E36B9C;
    v36 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v32 = 1107296256;
    v33 = sub_188FDF218;
    v34 = &block_descriptor_101;
    v27 = _Block_copy(&aBlock);

    v28 = swift_allocObject();
    *(v28 + 16) = a3;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_188FDF1E8;
    *(v29 + 24) = v28;
    v35 = sub_188E36B9C;
    v36 = v29;
    aBlock = MEMORY[0x1E69E9820];
    v32 = 1107296256;
    v33 = sub_188FDF218;
    v34 = &block_descriptor_111_1;
    v30 = _Block_copy(&aBlock);

    [v5 _acceptMenuVisit_leafVisit_];
    _Block_release(v30);
    _Block_release(v27);
  }
}

void sub_188FDB6BC(void *a1, uint64_t a2, void *a3)
{
  v15 = MEMORY[0x1E69E7CC0];
  v6 = [a1 children];
  sub_188FDEE50();
  v7 = sub_18A4A7548();

  sub_188FD9A18(v7, a2, &v15);

  v8 = sub_18A4A7518();
  v14 = [a1 menuByReplacingChildren_];

  v9 = [v14 children];
  v10 = sub_18A4A7548();

  if (v10 >> 62)
  {
    v13 = sub_18A4A7F68();

    if (!v13)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v12 = v14;
  MEMORY[0x18CFE2450]();
  if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_18A4A7588();
  }

  sub_18A4A75F8();
LABEL_6:
}

void sub_188FDB878(void *a1, void *a2)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    [a1 copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188FDEE50();
    if (swift_dynamicCast())
    {
      v4 = v5;
      MEMORY[0x18CFE2450]();
      if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18A4A7588();
      }

      sub_18A4A75F8();
    }
  }
}

void sub_188FDB980(id *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, __n128 a6)
{
  v43 = a4;
  v44 = a5;
  v38 = a3;
  v42 = a2;
  v8 = sub_18A4A3F68();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *a1;
  v13 = *(v9 + 16);
  v36 = v9 + 16;
  v37 = v13;
  v31 = v8;
  (v13)(v12, a3, v8, v11);
  v14 = *(v9 + 80);
  v15 = (v10 + ((v14 + 24) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v14 + 24) & ~v14;
  v35 = v15;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v42;
  v33 = *(v9 + 32);
  v33(v17 + ((v14 + 24) & ~v14), v12, v8);
  v18 = v44;
  *(v17 + v15) = v43;
  *(v17 + v16) = v18;
  v40 = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_188FDF008;
  *(v19 + 24) = v17;
  v49 = sub_188E36B9C;
  v50 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v32 = &v47;
  v47 = sub_188FDF218;
  v48 = &block_descriptor_80_1;
  v39 = _Block_copy(&aBlock);
  v20 = v42;
  v21 = v43;

  v22 = v31;
  v37(v12, v38, v31);
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  v33(v23 + v34, v12, v22);
  *(v23 + v35) = v21;
  *(v23 + v16) = v44;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_188FDF108;
  *(v24 + 24) = v23;
  v49 = sub_188E36B9C;
  v50 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_188FDF218;
  v48 = &block_descriptor_90_1;
  v25 = _Block_copy(&aBlock);
  v26 = v20;
  v27 = v21;

  v28 = v39;
  [v41 _acceptMenuVisit_leafVisit_];
  _Block_release(v25);
  _Block_release(v28);

  LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

  if (v28)
  {
    __break(1u);
    goto LABEL_5;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }
}

void sub_188FDBD78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v19 = MEMORY[0x1E69E7CC0];
  v10 = [a1 children];
  sub_188FDEE50();
  v11 = sub_18A4A7548();

  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = &v19;
  sub_188FD9B18(sub_188FDF200, v18, v11);

  v12 = sub_18A4A7518();
  v13 = [a1 menuByReplacingChildren_];

  v14 = [v13 children];
  v15 = sub_18A4A7548();

  if (v15 >> 62)
  {
    v16 = sub_18A4A7F68();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v16)
  {
    v17 = v13;
    MEMORY[0x18CFE2450]();
    if (*((*a5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18A4A7588();
    }

    sub_18A4A75F8();
  }
}

uint64_t sub_188FDBF38(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    result = [v9 isPlaceholder];
    if (result)
    {
      return result;
    }
  }

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v15 = result;
      v16 = ([result attributes] & 1) == 0;
      v17 = [v15 title];
      v18 = sub_18A4A7288();
      v20 = v19;

      v21 = HIBYTE(v20) & 0xF;
      if ((v20 & 0x2000000000000000) == 0)
      {
        v21 = v18 & 0xFFFFFFFFFFFFLL;
      }

      if (v21)
      {
        v22 = 1;
        result = sub_18A4A3F38();
        if (result)
        {
          goto LABEL_39;
        }

LABEL_38:
        if (!v16)
        {
          return result;
        }

        goto LABEL_39;
      }

      v47 = [v15 discoverabilityTitle];
      if (v47)
      {
        v48 = v47;
        v49 = sub_18A4A7288();
        v51 = v50;

        v44 = HIBYTE(v51) & 0xF;
        v45 = v49 & 0xFFFFFFFFFFFFLL;
        v46 = (v51 & 0x2000000000000000) == 0;
LABEL_32:
        if (v46)
        {
          v44 = v45;
        }

        v22 = v44 != 0;
        result = sub_18A4A3F38();
        if (result)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }

LABEL_37:
      v22 = 0;
      result = sub_18A4A3F38();
      if (result)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

LABEL_47:
    __break(1u);
    return result;
  }

  v12 = v11;
  result = UIApp;
  if (!UIApp)
  {
    __break(1u);
    goto LABEL_47;
  }

  v13 = [UIApp _responderForKeyEvents];
  v54 = a5;
  if (v13)
  {
    v14 = v13;
    if ([v12 _resolvedTargetFromFirstTarget_sender_])
    {
      sub_18A4A7DE8();
      swift_unknownObjectRelease();
    }

    else
    {

      v55 = 0u;
      v56 = 0u;
    }

    v57 = v55;
    v58 = v56;
  }

  else
  {
    v57 = 0u;
    v58 = 0u;
  }

  v23 = a4;
  sub_188A3F29C(&v57, &v55, &qword_1EA934050, qword_18A64CA10);
  v25 = *(&v56 + 1);
  if (*(&v56 + 1))
  {
    v26 = __swift_project_boxed_opaque_existential_0(&v55, *(&v56 + 1));
    v27 = *(v25 - 8);
    v28 = MEMORY[0x1EEE9AC00](v26);
    v30 = &v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v27 + 16))(v30, v28);
    v31 = sub_18A4A86A8();
    (*(v27 + 8))(v30, v25);
    v24 = __swift_destroy_boxed_opaque_existential_0Tm(&v55);
  }

  else
  {
    v31 = 0;
  }

  v32 = [a2 validatedCommandForTarget:v31 command:v12 sender:{0, v24}];
  swift_unknownObjectRelease();
  _UIMenuLeafCopyValidatablePropertiesFromValidatedLeaf(v12, v32);
  sub_188A3F29C(&v57, &v55, &qword_1EA934050, qword_18A64CA10);
  v33 = *(&v56 + 1);
  sub_188A3F5FC(&v55, &qword_1EA934050, qword_18A64CA10);
  if (v33)
  {
    v16 = ([v12 attributes] & 1) == 0;
  }

  else
  {
    v16 = 0;
  }

  v34 = [v12 title];
  v35 = sub_18A4A7288();
  v37 = v36;

  v38 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v38 = v35 & 0xFFFFFFFFFFFFLL;
  }

  a4 = v23;
  if (!v38)
  {
    v39 = [v12 discoverabilityTitle];
    a5 = v54;
    if (v39)
    {
      v40 = v39;
      v41 = sub_18A4A7288();
      v43 = v42;

      sub_188A3F5FC(&v57, &qword_1EA934050, qword_18A64CA10);

      v44 = HIBYTE(v43) & 0xF;
      v45 = v41 & 0xFFFFFFFFFFFFLL;
      v46 = (v43 & 0x2000000000000000) == 0;
      goto LABEL_32;
    }

    sub_188A3F5FC(&v57, &qword_1EA934050, qword_18A64CA10);
    goto LABEL_37;
  }

  sub_188A3F5FC(&v57, &qword_1EA934050, qword_18A64CA10);

  v22 = 1;
  a5 = v54;
  result = sub_18A4A3F38();
  if ((result & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_39:
  result = sub_18A4A3F08();
  if ((result | v22))
  {
    if (v16)
    {
      [a4 addObject_];
    }

    v52 = a1;
    MEMORY[0x18CFE2450]();
    if (*((*a5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18A4A7588();
    }

    return sub_18A4A75F8();
  }

  return result;
}

void sub_188FDC480(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = [a1 title];
  v8 = sub_18A4A7288();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v12 = [a1 title];
    v13 = sub_18A4A7288();
    v15 = v14;
  }

  else
  {
    v15 = 0xE900000000000029;
    v13 = 0x656D616E206F6E28;
  }

  if (([a1 options] & 1) == 0)
  {
    goto LABEL_10;
  }

  v16 = [a1 title];
  v17 = sub_18A4A7288();
  v19 = v18;

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
  }

  else
  {
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939660, &unk_18A64D440);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18A64BFB0;
    *(inited + 32) = v13;
    *(inited + 40) = v15;
    aBlock = a2;

    sub_18920BBB4(inited);
  }

  isEscapingClosureAtFileLocation = a5;
  v23 = *(a5 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v38 = v25;
  *(a5 + 16) = v25;
  v26 = [a1 children];
  sub_188FDEE50();
  v15 = sub_18A4A7548();

  if (v15 >> 62)
  {
LABEL_31:
    v40 = v15 & 0xFFFFFFFFFFFFFF8;
    v43 = sub_18A4A7F68();
    goto LABEL_14;
  }

  v40 = v15 & 0xFFFFFFFFFFFFFF8;
  v43 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_14:
  v41 = v15 & 0xC000000000000001;

  v42 = a4;

  v27 = 0;
  v37 = v15;
  while (v43 != v27)
  {
    if (v41)
    {
      v28 = sub_188E49F28(v27, v15);
    }

    else
    {
      if (v27 >= *(v40 + 16))
      {
        goto LABEL_27;
      }

      v28 = *(v15 + 8 * v27 + 32);
    }

    v29 = v28;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v30 = swift_allocObject();
    v30[2] = a2;
    v30[3] = a3;
    v30[4] = v42;
    v30[5] = isEscapingClosureAtFileLocation;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_188FDF1F8;
    *(v31 + 24) = v30;
    v52 = sub_188E36B9C;
    v53 = v31;
    aBlock = MEMORY[0x1E69E9820];
    v49 = 1107296256;
    v50 = sub_188FDF218;
    v51 = &block_descriptor_50_1;
    v46 = _Block_copy(&aBlock);

    v47 = v29;
    v32 = v42;

    v33 = swift_allocObject();
    v33[2] = a2;
    v33[3] = v38;
    v33[4] = v32;
    v33[5] = a3;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_188FDF1FC;
    *(v34 + 24) = v33;
    v52 = sub_188E36B9C;
    v53 = v34;
    aBlock = MEMORY[0x1E69E9820];
    v49 = 1107296256;
    v50 = sub_188FDF218;
    v51 = &block_descriptor_61_0;
    a4 = _Block_copy(&aBlock);

    v35 = v32;

    [v47 _acceptMenuVisit_leafVisit_];
    _Block_release(a4);
    _Block_release(v46);
    v15 = "";

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      goto LABEL_28;
    }

    v36 = swift_isEscapingClosureAtFileLocation();

    ++v27;
    isEscapingClosureAtFileLocation = a5;
    v15 = v37;
    if (v36)
    {
      goto LABEL_29;
    }
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_188FDC9C4(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v44 = a5;
  v40[1] = a3;
  v41 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934408, &unk_18A65A670);
  v7 = *(v6 - 8);
  v42 = v6;
  v43 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939638, &qword_18A65A680);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v40 - v11;
  v13 = sub_18A4A3658();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 title];
  sub_18A4A7288();

  v19 = sub_18A4A3618();
  (*(*(v19 - 8) + 56))(v12, 1, 1, v19);

  sub_18A4A3638();
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (v20)
  {
    v21 = v20;
    v22 = a1;
    v23 = [v21 discoverabilityTitle];
    if (v23)
    {
      v24 = v23;
      sub_18A4A7288();
    }

    v25 = v44;
  }

  else
  {
    objc_opt_self();
    v26 = swift_dynamicCastObjCClass();
    v25 = v44;
    if (!v26)
    {
      goto LABEL_10;
    }

    v27 = v26;
    v28 = a1;
    v29 = [v27 discoverabilityTitle];
    if (v29)
    {
      v30 = v29;
      sub_18A4A7288();
    }
  }

  sub_18A4A3568();

LABEL_10:
  sub_18A4A3648();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v31 = a1;
    sub_188FDCE1C(v12);
    sub_18A4A3628();
  }

  [v41 containsObject_];
  sub_18A4A3558();
  v32 = *(v42 + 48);
  *v9 = a1;
  (*(v14 + 16))(&v9[v32], v17, v13);
  v33 = *v25;
  v34 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v25 = v33;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v33 = sub_188E4C514(0, v33[2] + 1, 1, v33);
    *v25 = v33;
  }

  v37 = v33[2];
  v36 = v33[3];
  if (v37 >= v36 >> 1)
  {
    *v25 = sub_188E4C514((v36 > 1), v37 + 1, 1, v33);
  }

  (*(v14 + 8))(v17, v13);
  v38 = *v25;
  v38[2] = v37 + 1;
  return sub_188FDEEB4(v9, v38 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v37);
}

uint64_t sub_188FDCE1C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_18A4A35E8();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA939640, &qword_18A65A688);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v18 - v5);
  v7 = sub_18A4A3608();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  sub_188FDD430(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_188A3F5FC(v6, &unk_1EA939640, &qword_18A65A688);
    v14 = 1;
  }

  else
  {
    v15 = (*(v8 + 32))(v13, v6, v7);
    sub_188FDD094(v15);
    (*(v8 + 16))(v10, v13, v7);
    sub_18A4A35F8();
    (*(v8 + 8))(v13, v7);
    v14 = 0;
  }

  v16 = sub_18A4A3618();
  return (*(*(v16 - 8) + 56))(a1, v14, 1, v16);
}

uint64_t sub_188FDD094(double a1)
{
  v2 = sub_18A4A35E8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - v8;
  v18[1] = MEMORY[0x1E69E7CC0];
  sub_188FDEF24(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939650, &qword_18A65A690);
  sub_188FDEF7C();
  sub_18A4A7EB8();
  if (([v1 modifierFlags] & 0x200000) != 0)
  {
    sub_18A4A3578();
    sub_188F650E0(v9, v5);
    v10 = *(v3 + 8);
    v10(v5, v2);
    v10(v9, v2);
  }

  if (([v1 modifierFlags] & 0x10000) != 0)
  {
    sub_18A4A35D8();
    sub_188F650E0(v9, v5);
    v11 = *(v3 + 8);
    v11(v5, v2);
    v11(v9, v2);
  }

  if (([v1 modifierFlags] & 0x40000) != 0)
  {
    sub_18A4A35C8();
    sub_188F650E0(v9, v5);
    v12 = *(v3 + 8);
    v12(v5, v2);
    v12(v9, v2);
  }

  if (([v1 modifierFlags] & 0x80000) != 0)
  {
    sub_18A4A35A8();
    sub_188F650E0(v9, v5);
    v13 = *(v3 + 8);
    v13(v5, v2);
    v13(v9, v2);
  }

  if (([v1 modifierFlags] & 0x20000) != 0)
  {
    sub_18A4A3598();
    sub_188F650E0(v9, v5);
    v14 = *(v3 + 8);
    v14(v5, v2);
    v14(v9, v2);
  }

  if (([v1 modifierFlags] & 0x100000) != 0)
  {
    sub_18A4A35B8();
    sub_188F650E0(v9, v5);
    v15 = *(v3 + 8);
    v15(v5, v2);
    v15(v9, v2);
  }

  result = [v1 modifierFlags];
  if ((result & 0x800000) != 0)
  {
    sub_18A4A3588();
    sub_188F650E0(v9, v5);
    v17 = *(v3 + 8);
    v17(v5, v2);
    return (v17)(v9, v2);
  }

  return result;
}

uint64_t sub_188FDD430@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 input];
  if (!v3)
  {
    v11 = sub_18A4A3608();
    v12 = *(*(v11 - 8) + 56);
    v13 = v11;
    v14 = a1;
    v15 = 1;
    goto LABEL_12;
  }

  v4 = v3;
  v5 = sub_18A4A7288();
  v7 = v6;

  if (sub_18A4A7288() != v5 || v8 != v7)
  {
    v10 = sub_18A4A86C8();

    if (v10)
    {
      goto LABEL_10;
    }

    if (sub_18A4A7288() == v5 && v20 == v7)
    {

LABEL_22:

      v16 = MEMORY[0x1E69DBA78];
      goto LABEL_11;
    }

    v22 = sub_18A4A86C8();

    if (v22)
    {
      goto LABEL_22;
    }

    if (sub_18A4A7288() == v5 && v23 == v7)
    {

LABEL_27:

      v16 = MEMORY[0x1E69DBA80];
      goto LABEL_11;
    }

    v24 = sub_18A4A86C8();

    if (v24)
    {
      goto LABEL_27;
    }

    if (sub_18A4A7288() == v5 && v25 == v7)
    {

LABEL_32:

      v16 = MEMORY[0x1E69DBA10];
      goto LABEL_11;
    }

    v26 = sub_18A4A86C8();

    if (v26)
    {
      goto LABEL_32;
    }

    if (sub_18A4A7288() == v5 && v27 == v7)
    {

LABEL_37:

      v16 = MEMORY[0x1E69DBA40];
      goto LABEL_11;
    }

    v28 = sub_18A4A86C8();

    if (v28)
    {
      goto LABEL_37;
    }

    if (sub_18A4A7288() == v5 && v29 == v7)
    {

LABEL_42:

      v16 = MEMORY[0x1E69DBA28];
      goto LABEL_11;
    }

    v30 = sub_18A4A86C8();

    if (v30)
    {
      goto LABEL_42;
    }

    if (sub_18A4A7288() == v5 && v31 == v7)
    {

LABEL_47:

      v16 = MEMORY[0x1E69DBA18];
      goto LABEL_11;
    }

    v32 = sub_18A4A86C8();

    if (v32)
    {
      goto LABEL_47;
    }

    if (sub_18A4A7288() == v5 && v33 == v7)
    {

LABEL_52:

      v16 = MEMORY[0x1E69DBA50];
      goto LABEL_11;
    }

    v34 = sub_18A4A86C8();

    if (v34)
    {
      goto LABEL_52;
    }

    if (sub_18A4A7288() == v5 && v35 == v7)
    {

LABEL_57:

      v16 = MEMORY[0x1E69DBA70];
      goto LABEL_11;
    }

    v36 = sub_18A4A86C8();

    if (v36)
    {
      goto LABEL_57;
    }

    if (sub_18A4A7288() == v5 && v37 == v7)
    {

LABEL_62:

      v16 = MEMORY[0x1E69DBA48];
      goto LABEL_11;
    }

    v38 = sub_18A4A86C8();

    if (v38)
    {
      goto LABEL_62;
    }

    if (v5 == 9 && v7 == 0xE100000000000000 || (sub_18A4A86C8() & 1) != 0)
    {

      v16 = MEMORY[0x1E69DBA20];
      goto LABEL_11;
    }

    if (v5 == 32 && v7 == 0xE100000000000000 || (sub_18A4A86C8() & 1) != 0)
    {

      v16 = MEMORY[0x1E69DBA30];
      goto LABEL_11;
    }

    if (v5 == 13 && v7 == 0xE100000000000000 || (sub_18A4A86C8() & 1) != 0 || v5 == 10 && v7 == 0xE100000000000000 || (sub_18A4A86C8() & 1) != 0)
    {

      v16 = MEMORY[0x1E69DBA58];
      goto LABEL_11;
    }

    if (sub_18A4A7288() == v5 && v39 == v7)
    {
    }

    else
    {
      v40 = sub_18A4A86C8();

      if ((v40 & 1) == 0)
      {
        if (sub_18A4A7288() == v5 && v42 == v7)
        {
        }

        else
        {
          v43 = sub_18A4A86C8();

          if ((v43 & 1) == 0)
          {
            if (sub_18A4A7288() == v5 && v44 == v7)
            {
            }

            else
            {
              v45 = sub_18A4A86C8();

              if ((v45 & 1) == 0)
              {
                if (sub_18A4A7288() == v5 && v46 == v7)
                {
                }

                else
                {
                  v47 = sub_18A4A86C8();

                  if ((v47 & 1) == 0)
                  {
                    if (sub_18A4A7288() == v5 && v48 == v7)
                    {
                    }

                    else
                    {
                      v49 = sub_18A4A86C8();

                      if ((v49 & 1) == 0)
                      {
                        if (sub_18A4A7288() == v5 && v50 == v7)
                        {
                        }

                        else
                        {
                          v51 = sub_18A4A86C8();

                          if ((v51 & 1) == 0)
                          {
                            if (sub_18A4A7288() == v5 && v52 == v7)
                            {
                            }

                            else
                            {
                              v53 = sub_18A4A86C8();

                              if ((v53 & 1) == 0)
                              {
                                if (sub_18A4A7288() == v5 && v54 == v7)
                                {
                                }

                                else
                                {
                                  v55 = sub_18A4A86C8();

                                  if ((v55 & 1) == 0)
                                  {
                                    if (sub_18A4A7288() == v5 && v56 == v7)
                                    {
                                    }

                                    else
                                    {
                                      v57 = sub_18A4A86C8();

                                      if ((v57 & 1) == 0)
                                      {
                                        if (sub_18A4A7288() == v5 && v58 == v7)
                                        {
                                        }

                                        else
                                        {
                                          v59 = sub_18A4A86C8();

                                          if ((v59 & 1) == 0)
                                          {
                                            if (sub_18A4A7288() == v5 && v60 == v7)
                                            {
                                            }

                                            else
                                            {
                                              v61 = sub_18A4A86C8();

                                              if ((v61 & 1) == 0)
                                              {
                                                if (sub_18A4A7288() == v5 && v62 == v7)
                                                {
                                                }

                                                else
                                                {
                                                  v63 = sub_18A4A86C8();

                                                  if ((v63 & 1) == 0)
                                                  {
                                                    *a1 = v5;
                                                    a1[1] = v7;
                                                    v16 = MEMORY[0x1E69DBA38];
                                                    goto LABEL_11;
                                                  }
                                                }

                                                v41 = 12;
                                                goto LABEL_83;
                                              }
                                            }

                                            v41 = 11;
LABEL_83:
                                            *a1 = v41;
                                            v16 = MEMORY[0x1E69DBA68];
                                            goto LABEL_11;
                                          }
                                        }

                                        v41 = 10;
                                        goto LABEL_83;
                                      }
                                    }

                                    v41 = 9;
                                    goto LABEL_83;
                                  }
                                }

                                v41 = 8;
                                goto LABEL_83;
                              }
                            }

                            v41 = 7;
                            goto LABEL_83;
                          }
                        }

                        v41 = 6;
                        goto LABEL_83;
                      }
                    }

                    v41 = 5;
                    goto LABEL_83;
                  }
                }

                v41 = 4;
                goto LABEL_83;
              }
            }

            v41 = 3;
            goto LABEL_83;
          }
        }

        v41 = 2;
        goto LABEL_83;
      }
    }

    v41 = 1;
    goto LABEL_83;
  }

LABEL_10:

  v16 = MEMORY[0x1E69DBA60];
LABEL_11:
  v17 = *v16;
  v18 = sub_18A4A3608();
  v64 = *(v18 - 8);
  (*(v64 + 104))(a1, v17, v18);
  v12 = *(v64 + 56);
  v14 = a1;
  v15 = 0;
  v13 = v18;
LABEL_12:

  return v12(v14, v15, 1, v13);
}

id sub_188FDDFE8()
{
  v0 = [objc_opt_self() sharedSystem];
  v1 = [v0 _rootMenu];

  v2 = [v1 children];
  sub_188FDEE50();
  v3 = sub_18A4A7548();

  if (v3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_18A4A7F68())
  {
    v11 = v1;
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_188E49F28(v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v1 = (v5 + 1);
      if (__OFADD__(v5, 1))
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_18A4A81D8();
        sub_18A4A8218();
        sub_18A4A8228();
        sub_18A4A81E8();
      }

      else
      {
      }

      ++v5;
      if (v1 == i)
      {
        v1 = v11;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  v8 = sub_18A4A7518();

  v9 = [v1 menuByReplacingChildren_];

  return v9;
}

id sub_188FDE1F8(uint64_t a1)
{
  v4 = [objc_opt_self() hashTableWithOptions_];
  if (!UIApp)
  {
    goto LABEL_32;
  }

  if (([UIApp _supportsMenuActions] & 1) == 0)
  {
    v18 = objc_opt_self();
    sub_188FDEE50();
    v19 = sub_18A4A7518();
    v20 = [v18 _defaultMenuWithIdentifier_children_];

    return v20;
  }

  v46 = MEMORY[0x1E69E7CC0];
  if (!UIApp)
  {
    goto LABEL_33;
  }

  v5 = [UIApp _responderForKeyEvents];
  if (!v5)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v6 = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = &v46;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_188FDEFE0;
  *(v8 + 24) = v7;
  aBlock[4] = sub_188B89F5C;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188B89F00;
  aBlock[3] = &block_descriptor_70_3;
  v9 = _Block_copy(aBlock);

  [v6 _enumerateKeyboardShortcutsInChainWithOptions_usingBlock_];

  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v42[7] = v7;
    v44 = v4;
    v2 = sub_188FDDFE8();
    isEscapingClosureAtFileLocation = [v2 children];
    sub_188FDEE50();
    v4 = sub_18A4A7548();

    v7 = v4 >> 62;
    v43 = a1;
    if (!(v4 >> 62))
    {
      if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      goto LABEL_8;
    }
  }

  if (!sub_18A4A7F68())
  {
    goto LABEL_36;
  }

LABEL_8:
  if ((v4 & 0xC000000000000001) != 0)
  {

    isEscapingClosureAtFileLocation = sub_188E49F28(0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    isEscapingClosureAtFileLocation = *(v4 + 32);
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
LABEL_35:

    goto LABEL_36;
  }

  v11 = v10;
  v12 = isEscapingClosureAtFileLocation;
  v13 = [v11 identifier];
  v14 = sub_18A4A7288();
  v16 = v15;
  if (v14 == sub_18A4A7288() && v16 == v17)
  {

LABEL_17:
    v22 = [v11 children];
    v23 = sub_18A4A7548();

    v24 = v46;
    if (v46 >> 62)
    {

      v25 = sub_18A4A83B8();
    }

    else
    {
      swift_bridgeObjectRetain_n();
      sub_18A4A8738();
      v25 = v24;
    }

    aBlock[0] = v23;
    sub_18920B968(v25);
    v26 = sub_18A4A7518();

    isEscapingClosureAtFileLocation = [v11 menuByReplacingChildren_];

    v27 = isEscapingClosureAtFileLocation;
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v7 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
    {
      v4 = sub_188B8AD14(v4);
    }

    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v29 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x20);
      *((v4 & 0xFFFFFFFFFFFFFF8) + 0x20) = v27;

      v30 = sub_18A4A7518();

      v31 = [v2 menuByReplacingChildren_];

      v32 = v31;
      v33 = sub_188FDB204();

      v34 = objc_allocWithZone(_UIMenuLeafValidator);
      v35 = v33;
      v36 = [v34 init];
      aBlock[0] = MEMORY[0x1E69E7CC0];
      v37 = [v35 children];
      v38 = sub_18A4A7548();

      MEMORY[0x1EEE9AC00](v39);
      v42[2] = v36;
      v42[3] = v43;
      v42[4] = v44;
      v42[5] = aBlock;
      sub_188FD9B18(sub_188FDEFE8, v42, v38);

      v40 = sub_18A4A7518();
      v20 = [v35 menuByReplacingChildren_];

      return v20;
    }

    __break(1u);
    goto LABEL_31;
  }

  v21 = sub_18A4A86C8();

  if (v21)
  {
    goto LABEL_17;
  }

LABEL_36:
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

uint64_t sub_188FDE8C0(uint64_t a1, __n128 a2)
{
  v4 = sub_18A4A3F68();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v11 = *(v2 + 16);
  if ((sub_18A4A3F18() & 1) == 0 || (v12 = OBJC_IVAR____TtCC5UIKit29_UIIntelligenceCommandManagerP33_027C523F92F121A6DBA25987CE370D9F24IntelligenceCommandCache__lastFetchedCommands, swift_beginAccess(), !*(*(v11 + v12) + 16)) || (v13 = OBJC_IVAR____TtCC5UIKit29_UIIntelligenceCommandManagerP33_027C523F92F121A6DBA25987CE370D9F24IntelligenceCommandCache__options, swift_beginAccess(), v14 = *(v5 + 16), v14(v10, v11 + v13, v4), v14(v7, a1, v4), sub_18A4A3F18(), sub_18A4A3F28(), LOBYTE(v13) = sub_18A4A3F48(), v15 = *(v5 + 8), v15(v7, v4), v15(v10, v4), (v13 & 1) == 0))
  {
    v16 = sub_188FDE1F8(a1);
    v18 = v17;
    sub_188FDA648(v16, a1, v17);
  }

  v19 = OBJC_IVAR____TtCC5UIKit29_UIIntelligenceCommandManagerP33_027C523F92F121A6DBA25987CE370D9F24IntelligenceCommandCache__lastFetchedCommands;
  swift_beginAccess();
  return *(v11 + v19);
}

unint64_t sub_188FDEAC4()
{
  result = qword_1EA9395D0;
  if (!qword_1EA9395D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9395D0);
  }

  return result;
}

unint64_t sub_188FDEB18()
{
  result = qword_1EA9395D8;
  if (!qword_1EA9395D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9395D8);
  }

  return result;
}

unint64_t sub_188FDEB70()
{
  result = qword_1EA9395E0;
  if (!qword_1EA9395E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9395E0);
  }

  return result;
}

unint64_t sub_188FDEBC8()
{
  result = qword_1EA9395E8;
  if (!qword_1EA9395E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9395E8);
  }

  return result;
}

uint64_t type metadata accessor for _UIIntelligenceCommandManager.IntelligenceCommandCache(uint64_t a1)
{
  result = qword_1EA939610;
  if (!qword_1EA939610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_188FDECCC(uint64_t a1, __n128 a2)
{
  result = sub_18A4A3F68();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}