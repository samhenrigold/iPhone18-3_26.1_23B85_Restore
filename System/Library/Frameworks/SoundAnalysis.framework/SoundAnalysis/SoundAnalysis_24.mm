uint64_t sub_1C999904C(char a1)
{
  if (!a1)
  {
    return 1701667182;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  return 0xD000000000000013;
}

uint64_t sub_1C99990A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v14 = a4;
  v7 = sub_1C97A2CEC(&qword_1EC3CEFD0, &qword_1C9AC02C8);
  sub_1C97AE9C8();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v14 - v11;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C999A390();
  sub_1C9A93DD8();
  v17 = 0;
  sub_1C9A939C8();
  if (!v5)
  {
    v16 = 1;
    sub_1C9A93A08();
    v15 = 2;
    sub_1C9A939E8();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_1C9999240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  sub_1C9A92528();
  MEMORY[0x1CCA91980](a4);
  v7 = 0.0;
  if (a5 != 0.0)
  {
    v7 = a5;
  }

  return MEMORY[0x1CCA919B0](*&v7);
}

uint64_t sub_1C9999290(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  sub_1C9A93CC8();
  sub_1C9999240(v9, a1, a2, a3, a4);
  return sub_1C9A93D18();
}

double sub_1C9999300(void *a1)
{
  sub_1C97A2CEC(&qword_1EC3CEFC0, &qword_1C9AC02C0);
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C999A390();
  sub_1C9A93DB8();
  if (!v1)
  {
    sub_1C97C2CA4();
    sub_1C9A938A8();
    sub_1C97C2CA4();
    sub_1C9A938E8();
    sub_1C97C2CA4();
    sub_1C9A938C8();
    v2 = v6;
    v7 = sub_1C97BE30C();
    v8(v7);
  }

  sub_1C97A592C(a1);
  return v2;
}

uint64_t sub_1C99994E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9998F30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9999508(uint64_t a1)
{
  v2 = sub_1C999A390();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9999544(uint64_t a1)
{
  v2 = sub_1C999A390();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99995A0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 3);
  sub_1C9A93CC8();
  sub_1C9999240(v6, v1, v2, v3, v4);
  return sub_1C9A93D18();
}

void sub_1C9999608(void *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = sub_1C9999300(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }
}

double (*SNSoundActionCommand.confidenceThreshold.modify(void *a1))(uint64_t a1)
{
  v2 = OBJC_IVAR___SNSoundActionCommand_impl;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = *(v1 + v2 + 24);
  return sub_1C9999718;
}

double sub_1C9999718(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + *(a1 + 16) + 24) = *a1;
  return result;
}

uint64_t (*SNSoundActionCommand.minDurationBlocks.modify(void *a1))()
{
  v2 = OBJC_IVAR___SNSoundActionCommand_impl;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = *(v1 + v2 + 16);
  return sub_1C99997C4;
}

uint64_t SNSoundActionCommand.name.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___SNSoundActionCommand_impl);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1C99998B0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SNSoundActionCommand.name.setter(v1, v2);
}

uint64_t (*SNSoundActionCommand.name.modify(void *a1))(void *a1)
{
  v3 = OBJC_IVAR___SNSoundActionCommand_impl;
  a1[2] = v1;
  a1[3] = v3;
  v4 = (v1 + v3);
  v5 = v4[1];
  *a1 = *v4;
  a1[1] = v5;

  return sub_1C98462F4;
}

id sub_1C999994C()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR___SNSoundActionCommand_impl];
  *v2 = 0;
  *(v2 + 1) = 0xE000000000000000;
  *(v2 + 2) = 0;
  *(v2 + 3) = 0;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_1C99999C0()
{
  ObjectType = swift_getObjectType();
  v17 = 1701667150;
  v18 = 0xE400000000000000;
  sub_1C9A93548();
  v3 = sub_1C999A5C8();
  v4 = sub_1C99D1D54(v3);
  v6 = v5;
  sub_1C97C90D4(v19);
  if (v1)
  {

    return swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1C9A93548();
    v7 = sub_1C999A5C8();
    v8 = sub_1C99D1DF0(v7);
    sub_1C97C90D4(v19);
    v17 = 0xD000000000000013;
    v18 = 0x80000001C9ADC040;
    sub_1C9A93548();
    v9 = sub_1C999A5C8();
    v10 = sub_1C99D1DF0(v9);
    sub_1C97C90D4(v19);

    sub_1C999C710();
    v11 = [v8 integerValue];
    sub_1C999C604();
    [v10 doubleValue];
    v13 = v12;

    v14 = &v0[OBJC_IVAR___SNSoundActionCommand_impl];
    *v14 = v4;
    *(v14 + 1) = v6;
    *(v14 + 2) = v11;
    *(v14 + 3) = v13;
    v16.receiver = v0;
    v16.super_class = ObjectType;
    return objc_msgSendSuper2(&v16, sel_init);
  }
}

void *SNSoundActionCommand.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = v1 + OBJC_IVAR___SNSoundActionCommand_impl;
  v6 = *(v1 + OBJC_IVAR___SNSoundActionCommand_impl);
  v5 = *(v1 + OBJC_IVAR___SNSoundActionCommand_impl + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = objc_allocWithZone(ObjectType);
  v10 = &v9[OBJC_IVAR___SNSoundActionCommand_impl];
  *v10 = v6;
  *(v10 + 1) = v5;
  *(v10 + 2) = v7;
  *(v10 + 3) = v8;
  v12.receiver = v9;
  v12.super_class = ObjectType;

  result = objc_msgSendSuper2(&v12, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t SNSoundActionCommand.hash.getter()
{
  v1 = v0 + OBJC_IVAR___SNSoundActionCommand_impl;
  v2 = *(v0 + OBJC_IVAR___SNSoundActionCommand_impl);
  v3 = *(v0 + OBJC_IVAR___SNSoundActionCommand_impl + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_1C9A93CC8();

  sub_1C9999240(v7, v2, v3, v4, v5);

  return sub_1C9A93D18();
}

BOOL SNSoundActionCommand.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1C97A2C7C(a1, &v14);
  if (v15)
  {
    sub_1C97A2D34(&v14, v13);
    sub_1C97BD360(v13, v12);
    if (swift_dynamicCast())
    {
      v3 = *(v1 + OBJC_IVAR___SNSoundActionCommand_impl + 16);
      v4 = *(v1 + OBJC_IVAR___SNSoundActionCommand_impl + 24);
      v5 = *&v11[OBJC_IVAR___SNSoundActionCommand_impl + 16];
      v6 = *&v11[OBJC_IVAR___SNSoundActionCommand_impl + 24];
      if (*(v1 + OBJC_IVAR___SNSoundActionCommand_impl) != *&v11[OBJC_IVAR___SNSoundActionCommand_impl] || *(v1 + OBJC_IVAR___SNSoundActionCommand_impl + 8) != *&v11[OBJC_IVAR___SNSoundActionCommand_impl + 8])
      {
        v8 = sub_1C9A93B18();

        v9 = 0;
        if ((v8 & 1) == 0 || v3 != v5)
        {
          goto LABEL_14;
        }

        goto LABEL_12;
      }

      if (v3 == v5)
      {
LABEL_12:
        v9 = v4 == v6;
LABEL_14:
        sub_1C97A592C(v13);
        return v9;
      }
    }

    v9 = 0;
    goto LABEL_14;
  }

  return 0;
}

id SNSoundActionCommand.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1C97A227C(1819307369, 0xE400000000000000);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v3;
  v11 = objc_allocWithZone(ObjectType);
  v12 = &v11[OBJC_IVAR___SNSoundActionCommand_impl];
  *v12 = v5;
  *(v12 + 1) = v7;
  *(v12 + 2) = v9;
  v12[3] = v10;
  v16.receiver = v11;
  v16.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v16, sel_init);

  v14 = swift_getObjectType();
  sub_1C999A5D8(v14);
  return v13;
}

Swift::Void __swiftcall SNSoundActionCommand.encode(with:)(NSCoder with)
{
  v2 = v1 + OBJC_IVAR___SNSoundActionCommand_impl;
  v3 = *(v1 + OBJC_IVAR___SNSoundActionCommand_impl);
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);

  sub_1C97A03A0(v3, v4, v5, 1819307369, 0xE400000000000000);
}

id SNSoundActionCommand.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C999A33C()
{
  result = qword_1EC3CEFB8;
  if (!qword_1EC3CEFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEFB8);
  }

  return result;
}

unint64_t sub_1C999A390()
{
  result = qword_1EC3CEFC8;
  if (!qword_1EC3CEFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEFC8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SoundActionsCommand.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C999A4C4()
{
  result = qword_1EC3CEFD8;
  if (!qword_1EC3CEFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEFD8);
  }

  return result;
}

unint64_t sub_1C999A51C()
{
  result = qword_1EC3CEFE0;
  if (!qword_1EC3CEFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEFE0);
  }

  return result;
}

unint64_t sub_1C999A574()
{
  result = qword_1EC3CEFE8;
  if (!qword_1EC3CEFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEFE8);
  }

  return result;
}

uint64_t sub_1C999A5D8(uint64_t a1)
{

  return swift_deallocPartialClassInstance();
}

void sub_1C999A5F8(uint64_t a1)
{
  v32 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1C9A934C8();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v38 = MEMORY[0x1E69E7CC0];
    sub_1C97B7B08(0, v2 & ~(v2 >> 63), 0);
    v3 = v38;
    v35 = sub_1C98BC45C(a1);
    v36 = v4;
    v37 = v6 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      v31 = v2;
      while (!__OFADD__(v7++, 1))
      {
        v9 = v35;
        v10 = v37;
        v33 = v36;
        sub_1C98BC4FC(v35, v36, v37, a1, v5);
        v12 = v11;
        v13 = *&v11[OBJC_IVAR___SNModelFeatureConnection_impl + 16];
        v14 = *&v11[OBJC_IVAR___SNModelFeatureConnection_impl + 24];

        v38 = v3;
        v16 = *(v3 + 16);
        v15 = *(v3 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1C97B7B08((v15 > 1), v16 + 1, 1);
          v3 = v38;
        }

        *(v3 + 16) = v16 + 1;
        v17 = v3 + 16 * v16;
        *(v17 + 32) = v13;
        *(v17 + 40) = v14;
        if (v32)
        {
          if (!v10)
          {
            goto LABEL_36;
          }

          v18 = v3;
          if (sub_1C9A93498())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v23 = v31;
          sub_1C97A2CEC(&unk_1EC3D2300, &qword_1C9AC0440);
          v24 = sub_1C9A92B58();
          sub_1C9A93508();
          v24(v34, 0);
        }

        else
        {
          if (v10)
          {
            goto LABEL_37;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v18 = v3;
          v19 = 1 << *(a1 + 32);
          if (v9 >= v19)
          {
            goto LABEL_32;
          }

          v20 = v9 >> 6;
          v21 = *(a1 + 56 + 8 * (v9 >> 6));
          if (((v21 >> v9) & 1) == 0)
          {
            goto LABEL_33;
          }

          if (*(a1 + 36) != v33)
          {
            goto LABEL_34;
          }

          v22 = v21 & (-2 << (v9 & 0x3F));
          if (v22)
          {
            v19 = __clz(__rbit64(v22)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v23 = v31;
          }

          else
          {
            v25 = v20 << 6;
            v26 = v20 + 1;
            v27 = (a1 + 64 + 8 * v20);
            v23 = v31;
            while (v26 < (v19 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_1C97FDD94(v9, v33, 0);
                v19 = __clz(__rbit64(v28)) + v25;
                goto LABEL_27;
              }
            }

            sub_1C97FDD94(v9, v33, 0);
          }

LABEL_27:
          v30 = *(a1 + 36);
          v35 = v19;
          v36 = v30;
          v37 = 0;
        }

        v3 = v18;
        if (v7 == v23)
        {
          sub_1C97FDD94(v35, v36, v37);
          return;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }
}

void sub_1C999A908(uint64_t a1)
{
  v32 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1C9A934C8();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v38 = MEMORY[0x1E69E7CC0];
    sub_1C97B7B08(0, v2 & ~(v2 >> 63), 0);
    v3 = v38;
    v35 = sub_1C98BC45C(a1);
    v36 = v4;
    v37 = v6 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      v31 = v2;
      while (!__OFADD__(v7++, 1))
      {
        v9 = v35;
        v10 = v37;
        v33 = v36;
        sub_1C98BC4FC(v35, v36, v37, a1, v5);
        v12 = v11;
        v13 = *&v11[OBJC_IVAR___SNModelFeatureConnection_impl];
        v14 = *&v11[OBJC_IVAR___SNModelFeatureConnection_impl + 8];

        v38 = v3;
        v16 = *(v3 + 16);
        v15 = *(v3 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1C97B7B08((v15 > 1), v16 + 1, 1);
          v3 = v38;
        }

        *(v3 + 16) = v16 + 1;
        v17 = v3 + 16 * v16;
        *(v17 + 32) = v13;
        *(v17 + 40) = v14;
        if (v32)
        {
          if (!v10)
          {
            goto LABEL_36;
          }

          v18 = v3;
          if (sub_1C9A93498())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v23 = v31;
          sub_1C97A2CEC(&unk_1EC3D2300, &qword_1C9AC0440);
          v24 = sub_1C9A92B58();
          sub_1C9A93508();
          v24(v34, 0);
        }

        else
        {
          if (v10)
          {
            goto LABEL_37;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v18 = v3;
          v19 = 1 << *(a1 + 32);
          if (v9 >= v19)
          {
            goto LABEL_32;
          }

          v20 = v9 >> 6;
          v21 = *(a1 + 56 + 8 * (v9 >> 6));
          if (((v21 >> v9) & 1) == 0)
          {
            goto LABEL_33;
          }

          if (*(a1 + 36) != v33)
          {
            goto LABEL_34;
          }

          v22 = v21 & (-2 << (v9 & 0x3F));
          if (v22)
          {
            v19 = __clz(__rbit64(v22)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v23 = v31;
          }

          else
          {
            v25 = v20 << 6;
            v26 = v20 + 1;
            v27 = (a1 + 64 + 8 * v20);
            v23 = v31;
            while (v26 < (v19 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_1C97FDD94(v9, v33, 0);
                v19 = __clz(__rbit64(v28)) + v25;
                goto LABEL_27;
              }
            }

            sub_1C97FDD94(v9, v33, 0);
          }

LABEL_27:
          v30 = *(a1 + 36);
          v35 = v19;
          v36 = v30;
          v37 = 0;
        }

        v3 = v18;
        if (v7 == v23)
        {
          sub_1C97FDD94(v35, v36, v37);
          return;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }
}

uint64_t sub_1C999AC18(void *a1)
{
  v2 = sub_1C9A913D8();
  MEMORY[0x1EEE9AC00](v2);
  v3 = [a1 count];
  v28 = MEMORY[0x1E69E7CC0];
  sub_1C97B7B08(0, v3 & ~(v3 >> 63), 0);
  v4 = v28;
  result = sub_1C9A92F78();
  if (v3 < 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v3)
  {
    sub_1C999C224();
    sub_1C999C0D4(v6, v7, MEMORY[0x1E6968EB8]);
    do
    {
      result = sub_1C9A93298();
      if (!v27)
      {
        goto LABEL_20;
      }

      sub_1C97BD360(&v26, &v24);
      if (!swift_dynamicCast())
      {
        sub_1C999BCD0();
        swift_allocError();
        swift_willThrow();
        v20 = sub_1C999C254();
        v21(v20);

        sub_1C97A592C(&v26);
        return v4;
      }

      sub_1C97A592C(&v26);
      v28 = v4;
      v9 = *(v4 + 16);
      v8 = *(v4 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1C97B7B08((v8 > 1), v9 + 1, 1);
        v4 = v28;
      }

      *(v4 + 16) = v9 + 1;
      v10 = v4 + 16 * v9;
      *(v10 + 32) = v22;
      *(v10 + 40) = v23;
    }

    while (--v3);
  }

  sub_1C999C224();
  sub_1C999C0D4(v11, v12, MEMORY[0x1E6968EB8]);
  while (1)
  {
    sub_1C9A93298();
    if (!v25)
    {
      v16 = sub_1C999C254();
      v17(v16);
      sub_1C97A59D0(&v24);
      return v4;
    }

    sub_1C97A2D34(&v24, &v26);
    sub_1C97BD360(&v26, &v24);
    if (!swift_dynamicCast())
    {
      break;
    }

    sub_1C97A592C(&v26);
    v28 = v4;
    v14 = *(v4 + 16);
    v13 = *(v4 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1C97B7B08((v13 > 1), v14 + 1, 1);
      v4 = v28;
    }

    *(v4 + 16) = v14 + 1;
    v15 = v4 + 16 * v14;
    *(v15 + 32) = v22;
    *(v15 + 40) = v23;
  }

  sub_1C999BCD0();
  swift_allocError();
  swift_willThrow();
  sub_1C97A592C(&v26);
  v18 = sub_1C999C254();
  v19(v18);

  return v4;
}

void sub_1C999AFD0(SEL *a1)
{
  v3 = [v1 *a1];
  v4 = sub_1C999AC18(v3);

  if (!v2)
  {
    sub_1C9A3C12C(v4);
  }
}

void *sub_1C999B034(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v2[5] = MEMORY[0x1E69E7CC8];
  v2[2] = a1;
  v2[3] = a2;
  ObjectType = swift_getObjectType();
  v6 = *(a2 + 16);
  swift_unknownObjectRetain();
  v7 = v6(ObjectType, a2);
  v9 = sub_1C999B12C(v7, v8);

  v3[4] = v9;
  type metadata accessor for SNModelMetadataUtils(v10);
  v11 = v6(ObjectType, a2);
  v12 = sub_1C9A3C5D4(v11, MEMORY[0x1E69E7CD0]);

  v13 = sub_1C9A0EF10(v12);

  swift_unknownObjectRelease();
  v3[6] = v13;
  return v3;
}

id sub_1C999B12C(void *a1, double a2)
{
  type metadata accessor for SNModelMetadataUtils(a2);
  v3 = sub_1C9A3C5D4(a1, MEMORY[0x1E69E7CD0]);
  sub_1C999A5F8(v3);
  v5 = v4;
  sub_1C999A908(v3);
  v7 = v6;

  v8 = [a1 inputDescriptionsByName];
  sub_1C97BD318(v9, 0, &qword_1EC3C54D0, 0x1E695FE50);
  v10 = sub_1C9A92328();

  v46[2] = v5;
  v44 = sub_1C999BD44(v10, sub_1C999BD24, v46);

  v11 = [a1 outputDescriptionsByName];
  v12 = sub_1C9A92328();

  v45[2] = v7;
  v43 = sub_1C999BD44(v12, sub_1C999C220, v45);

  v14 = 0;
  v15 = *(v7 + 16);
  for (i = (v7 + 40); ; i += 2)
  {
    if (v15 == v14)
    {
      result = sub_1C984099C(a1, &selRef_predictedFeatureName);
      v42 = result;
      v24 = v23;
      goto LABEL_16;
    }

    if (v14 >= *(v7 + 16))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      return result;
    }

    v18 = *(i - 1);
    v17 = *i;

    v19 = sub_1C984099C(a1, &selRef_predictedFeatureName);
    if (!v20)
    {

      goto LABEL_12;
    }

    if (v18 == v19 && v20 == v17)
    {
      break;
    }

    v22 = sub_1C9A93B18();

    if (v22)
    {
      goto LABEL_15;
    }

LABEL_12:
    ++v14;
  }

LABEL_15:
  v42 = 0;
  v24 = 0;
LABEL_16:
  v25 = 0;
  v26 = (v7 + 40);
  while (2)
  {
    if (v15 == v25)
    {

      v33 = sub_1C984099C(a1, &selRef_predictedProbabilitiesName);
      v35 = v34;
      goto LABEL_31;
    }

    if (v25 >= *(v7 + 16))
    {
      goto LABEL_33;
    }

    v28 = *(v26 - 1);
    v27 = *v26;

    v29 = sub_1C984099C(a1, &selRef_predictedProbabilitiesName);
    if (!v30)
    {

LABEL_27:
      v26 += 2;
      ++v25;
      continue;
    }

    break;
  }

  if (v28 != v29 || v30 != v27)
  {
    v32 = sub_1C9A93B18();

    if (v32)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

LABEL_30:

  v33 = 0;
  v35 = 0;
LABEL_31:
  v36 = [a1 metadata];
  type metadata accessor for MLModelMetadataKey(0);
  sub_1C999C23C();
  sub_1C999C0D4(v37, v38, &unk_1C9A9C304);
  v39 = sub_1C9A92328();

  v40 = objc_allocWithZone(MEMORY[0x1E695FEC0]);
  return sub_1C999BB18(v44, v43, v42, v24, v33, v35, v39, v41);
}

id sub_1C999B510(uint64_t a1, uint64_t a2)
{

  v6 = sub_1C9878610();

  v7 = objc_allocWithZone(MEMORY[0x1E695FE48]);
  result = sub_1C98B6EC8(v6);
  if (!v3)
  {
    v9 = result;
    v10 = [objc_opt_self() lazyProviderWithFeaturesProvidedBy:result addedToFeaturesProvidedBy:a1];
    v11 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    v45 = (*(v11 + 24))(v10, a2, ObjectType, v11);
    v43 = v2;
    v44 = v9;
    v13 = *(v2 + 48);
    v46 = sub_1C97BDEE0();
    v14 = 0;
    v15 = MEMORY[0x1E69E7CC8];
LABEL_3:
    for (i = v14; ; ++i)
    {
      if (v46 == i)
      {
        *(v43 + 40) = v15;

        sub_1C999AFD0(&selRef_outputFeatureNames);
        v39 = v38;
        v40 = objc_allocWithZone(MEMORY[0x1E695FE48]);
        v41 = sub_1C999BA9C(v45, v39);
        swift_unknownObjectRelease();

        return v41;
      }

      if ((v13 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1CCA912B0](i, v13);
      }

      else
      {
        if (i >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v17 = *(v13 + 8 * i + 32);
      }

      v18 = v17;
      v14 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v19 = *&v17[OBJC_IVAR___SNModelFeatureConnection_impl + 16];
      v20 = *&v17[OBJC_IVAR___SNModelFeatureConnection_impl + 24];

      v21 = sub_1C9A92478();

      v22 = [v45 featureValueForName_];

      if (v22)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v26 = sub_1C9A32230(v19, v20);
        v42 = v27;
        if (__OFADD__(v15[2], (v27 & 1) == 0))
        {
          goto LABEL_26;
        }

        v28 = v26;
        sub_1C97A2CEC(&qword_1EC3CD360, &qword_1C9AB6878);
        if (sub_1C9A93748())
        {
          v29 = sub_1C9A32230(v19, v20);
          if ((v42 & 1) != (v30 & 1))
          {
            goto LABEL_28;
          }

          v28 = v29;
          if ((v42 & 1) == 0)
          {
LABEL_17:
            v15[(v28 >> 6) + 8] |= 1 << v28;
            v31 = (v15[6] + 16 * v28);
            *v31 = v19;
            v31[1] = v20;
            *(v15[7] + 8 * v28) = v22;

            v32 = v15[2];
            v33 = __OFADD__(v32, 1);
            v34 = v32 + 1;
            if (!v33)
            {
              v15[2] = v34;
              goto LABEL_3;
            }

            goto LABEL_27;
          }
        }

        else if ((v42 & 1) == 0)
        {
          goto LABEL_17;
        }

        v36 = v15[7];
        v37 = *(v36 + 8 * v28);
        *(v36 + 8 * v28) = v22;

        goto LABEL_3;
      }

      v23 = sub_1C9A32230(v19, v20);
      v25 = v24;

      if (v25)
      {
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C97A2CEC(&qword_1EC3CD360, &qword_1C9AB6878);
        sub_1C9A93748();

        sub_1C97BD318(v35, 0, &qword_1EC3C54F8, 0x1E695FE60);
        sub_1C9A93768();

        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    result = sub_1C9A93BF8();
    __break(1u);
  }

  return result;
}

BOOL sub_1C999B97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (a4 + 40);
  v7 = *(a4 + 16) + 1;
  do
  {
    if (!--v7)
    {
      break;
    }

    if (*(v6 - 1) == a1 && *v6 == a2)
    {
      break;
    }

    v6 += 2;
  }

  while ((sub_1C9A93B18() & 1) == 0);
  return v7 == 0;
}

uint64_t sub_1C999B9EC()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1C999BA24()
{
  sub_1C999B9EC();

  return swift_deallocClassInstance();
}

id sub_1C999BA9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C9A92B18();

  v5 = [v2 initWithFeatureProvider:a1 featureNames:v4];
  swift_unknownObjectRelease();

  return v5;
}

id sub_1C999BB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  sub_1C97BD318(a8, 0, &qword_1EC3C54D0, 0x1E695FE50);
  v11 = sub_1C9A922F8();

  v12 = sub_1C9A922F8();

  if (a4)
  {
    v13 = sub_1C9A92478();

    if (a6)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = 0;
    if (a7)
    {
      goto LABEL_4;
    }

LABEL_7:
    v17 = 0;
    goto LABEL_8;
  }

  v13 = 0;
  if (!a6)
  {
    goto LABEL_6;
  }

LABEL_3:
  v14 = sub_1C9A92478();

  if (!a7)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for MLModelMetadataKey(0);
  sub_1C999C23C();
  sub_1C999C0D4(v15, v16, &unk_1C9A9C304);
  v17 = sub_1C9A922F8();

LABEL_8:
  v18 = [v21 initWithInputDescriptions:v11 outputDescriptions:v12 predictedFeatureName:v13 predictedProbabilitiesName:v14 metadata:{v17, a5}];

  return v18;
}

unint64_t sub_1C999BCD0()
{
  result = qword_1EC3CEFF8;
  if (!qword_1EC3CEFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEFF8);
  }

  return result;
}

unint64_t *sub_1C999BD44(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, id), unint64_t *a3)
{
  v6 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      a3 = sub_1C999C038(v12, v8, v6, a2);
      MEMORY[0x1CCA93280](v12, -1, -1);
      return a3;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v9 = (v13 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_1C99F14F0(0, v8, v9);
  sub_1C999BEC8(v9, v8, v6, a2);
  if (!v3)
  {
    return v10;
  }

  swift_willThrow();
  return a3;
}

void sub_1C999BEC8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, id))
{
  v22 = 0;
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
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a3 + 56) + 8 * v13);

    v18 = v17;
    LOBYTE(v15) = a4(v15, v16, v18);

    if (v15)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1C9938DD0(a1, a2, v22, a3);
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

unint64_t *sub_1C999C038(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, id))
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

    sub_1C999BEC8(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1C999C0D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *_s11DomainErrorOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C999C1CC()
{
  result = qword_1EC3CF000[0];
  if (!qword_1EC3CF000[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3CF000);
  }

  return result;
}

void sub_1C999C264()
{
  sub_1C993AF0C();
  sub_1C97CDE50(v1);
  v3 = v2;
  v4 = sub_1C999CA94([objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_]);

  if ((v4 & 1) == 0)
  {
    type metadata accessor for SNError(v5);
    sub_1C999CA44();
    sub_1C9A935B8();

    sub_1C999CAD8();
    v6 = [v0 description];
    sub_1C9A924A8();
    sub_1C999CAFC();
    sub_1C999CA78();

    sub_1C999CA58(0xD000000000000017, 0x80000001C9AD4AA0, v7, v8, 0xD000000000000014);
    sub_1C999CAE4();
    swift_willThrow();
  }
}

void sub_1C999C360()
{
  sub_1C993AF0C();
  sub_1C9A180B0(v1);
  v3 = v2;
  v4 = sub_1C999CA94([objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_]);

  if ((v4 & 1) == 0)
  {
    type metadata accessor for SNError(v5);
    sub_1C999CA44();
    sub_1C9A935B8();

    sub_1C999CAD8();
    v6 = [v0 description];
    sub_1C9A924A8();
    sub_1C999CAFC();
    sub_1C999CA78();

    sub_1C999CA58(0xD000000000000017, 0x80000001C9AD4AA0, v7, v8, 0xD000000000000015);
    sub_1C999CAE4();
    swift_willThrow();
  }
}

void sub_1C999C45C()
{
  sub_1C993AF0C();
  v1 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v2 = [v0 compare_];

  if (v2 != 1)
  {
    type metadata accessor for SNError(v3);
    sub_1C999CA44();
    sub_1C9A935B8();

    sub_1C999CAD8();
    v4 = [v0 description];
    sub_1C9A924A8();
    sub_1C999CAFC();
    sub_1C999CA78();

    sub_1C999CA58(0xD000000000000017, 0x80000001C9AD4AA0, v5, v6, 0xD00000000000001ELL);
    sub_1C999CAE4();
    swift_willThrow();
  }
}

id sub_1C999C568(void *a1, void *a2)
{
  v4 = [a1 longLongValue];
  if (v4 == [a2 longLongValue] && (objc_msgSend(a1, sel_doubleValue), v6 = v5, objc_msgSend(a2, sel_doubleValue), v6 == v7))
  {
    return [a1 isEqual_];
  }

  else
  {
    return 0;
  }
}

void sub_1C999C604()
{
  sub_1C993AF0C();
  [v2 doubleValue];
  v4 = sub_1C999CA94([objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_]);

  if ((v4 & 1) == 0)
  {
    type metadata accessor for SNError(v5);
    sub_1C999CA44();
    sub_1C9A935B8();

    sub_1C999CAD8();
    v6 = [v1 description];
    sub_1C9A924A8();
    sub_1C999CAFC();
    sub_1C999CA78();

    sub_1C999CA58(0xD000000000000017, 0x80000001C9AD4AA0, v7, v8, 0xD000000000000015);
    sub_1C999CAE4();
    swift_willThrow();
  }
}

void sub_1C999C710()
{
  sub_1C993AF0C();
  v2 = sub_1C97CDF38(v1);
  v3 = sub_1C999CA94([objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_]);

  if ((v3 & 1) == 0)
  {
    type metadata accessor for SNError(v4);
    sub_1C999CA44();
    sub_1C9A935B8();

    sub_1C999CAD8();
    v5 = [v0 description];
    sub_1C9A924A8();
    sub_1C999CAFC();
    sub_1C999CA78();

    sub_1C999CA58(0xD000000000000017, 0x80000001C9AD4AA0, v6, v7, 0xD00000000000001FLL);
    sub_1C999CAE4();
    swift_willThrow();
  }
}

unint64_t sub_1C999C80C(unint64_t a1, unint64_t a2)
{
  if (sub_1C9A92538() == 4)
  {
    v2 = 0;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v6 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v6 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v7 = (a1 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v7) = 1;
    }

    v8 = 4 << v7;
    v20 = a2 & 0xFFFFFFFFFFFFFFLL;
    v9 = 15;
    while (1)
    {
      if (4 * v6 == v9 >> 14)
      {
        return v2;
      }

      result = v9;
      if ((v9 & 0xC) == v8)
      {
        v13 = sub_1C999CAB0();
        result = sub_1C999C9E8(v13, v14, v15);
      }

      v11 = result >> 16;
      if (result >> 16 >= v6)
      {
        __break(1u);
LABEL_29:
        __break(1u);
        return result;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_1C9A925D8();
        v12 = result;
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        v19[0] = a1;
        v19[1] = v20;
        v12 = *(v19 + v11);
      }

      else
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          result = sub_1C9A93658();
        }

        v12 = *(result + v11);
      }

      if ((v9 & 0xC) == v8)
      {
        v16 = sub_1C999CAB0();
        result = sub_1C999C9E8(v16, v17, v18);
        v9 = result;
        if ((a2 & 0x1000000000000000) == 0)
        {
LABEL_20:
          v9 = (v9 & 0xFFFFFFFFFFFF0000) + 65540;
          goto LABEL_25;
        }
      }

      else if ((a2 & 0x1000000000000000) == 0)
      {
        goto LABEL_20;
      }

      if (v6 <= v9 >> 16)
      {
        goto LABEL_29;
      }

      sub_1C999CAB0();
      v9 = sub_1C9A925B8();
LABEL_25:
      v2 = v12 | (v2 << 8);
    }
  }

  type metadata accessor for SNError(v5);
  sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD000000000000025, 0x80000001C9ADC150);
  swift_willThrow();
  return v2;
}

uint64_t sub_1C999C9E8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_1C9A925E8();
    sub_1C999CAC0(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x1CCA90270](15, a1 >> 16);
    sub_1C999CAC0(v3);
    return v4 | 8;
  }
}

id sub_1C999CA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C9929478(a1, a2, 1, 0, a5, v5);
}

void sub_1C999CA78()
{

  JUMPOUT(0x1CCA90230);
}

id sub_1C999CA94(void *a1)
{

  return sub_1C999C568(v1, a1);
}

uint64_t sub_1C999CAE4()
{
}

void sub_1C999CAFC()
{
}

uint64_t sub_1C999CB78()
{
  sub_1C9890968();

  return swift_deallocClassInstance();
}

uint64_t sub_1C999CBAC()
{

  return v0;
}

uint64_t sub_1C999CBD4()
{
  sub_1C999CBAC();

  return swift_deallocClassInstance();
}

uint64_t sub_1C999CC90()
{
  if (qword_1EC3C5BA8 != -1)
  {
    swift_once();
  }

  v0 = [qword_1EC3C5BB0 dictionaryRepresentation];
  sub_1C9A92328();

  v1 = sub_1C99B590C();
  LODWORD(v0) = v2;

  return (v1 != 0) & ~v0;
}

uint64_t sub_1C999D1EC(void *a1)
{
  v2 = v1;
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  sub_1C97A2CEC(&qword_1EC3CF110, &qword_1C9AC0648);
  swift_allocObject();
  v4 = sub_1C9A91E28();
  *(v2 + 24) = v4;

  sub_1C999D7D0(a1, v4, v8);

  v5 = v8[1];
  *(v2 + 32) = v8[0];
  *(v2 + 48) = v5;
  v6 = v8[3];
  *(v2 + 64) = v8[2];
  *(v2 + 80) = v6;
  return v2;
}

id sub_1C999D290@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v45 = a1;
  v43 = a2;
  v2 = sub_1C97A2CEC(&qword_1EC3CF198, &qword_1C9AC0678);
  sub_1C97AE9C8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v43 - v6;
  v44 = sub_1C97A2CEC(&unk_1EC3CF1A0, &unk_1C9AC0680);
  sub_1C97AE9C8();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  sub_1C97A2CEC(&qword_1EC3C8D18, &qword_1C9AA5508);
  sub_1C97A2CEC(&unk_1EC3CF128, &unk_1C9AC0660);
  sub_1C97AE67C(&qword_1EC3CF1B0, &qword_1EC3C8D18, &qword_1C9AA5508, MEMORY[0x1E695BCF8]);
  sub_1C9A92048();
  sub_1C97A2CEC(&unk_1EC3CF138, &qword_1C9ACDD30);
  sub_1C9A91C98();
  (*(v4 + 8))(v7, v2);
  sub_1C97AE67C(&qword_1EC3CF1B8, &unk_1EC3CF1A0, &unk_1C9AC0680, MEMORY[0x1E695BE28]);
  v13 = v44;
  sub_1C9A92008();
  sub_1C97A2CEC(&qword_1EC3CF1C0, &unk_1C9AC0690);
  sub_1C97AA878();
  swift_allocObject();
  sub_1C97DA814();
  v14 = sub_1C98E3778();
  (*(v9 + 8))(v12, v13);
  v46 = v14;
  sub_1C97AE67C(&qword_1EC3CF1C8, &qword_1EC3CF1C0, &unk_1C9AC0690, &unk_1C9AB4B80);
  v15 = sub_1C9A91F28();

  v16 = v45;
  v17 = [v45 channelCount];
  result = [v16 sampleRate];
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v19 < 9.22337204e18)
  {
    v20 = v17;
    v21 = v19;
    v22 = sub_1C97A2CEC(&qword_1EC3C8580, &qword_1C9AA34C8);
    v23 = sub_1C97DAAF8(v22);
    v24 = objc_opt_self();
    *(v23 + 16) = sub_1C97DA978(v24);
    sub_1C97A2CEC(&unk_1EC3CF150, &qword_1C9AA34D0);
    sub_1C97AA878();
    swift_allocObject();
    sub_1C97DA814();
    v25 = sub_1C9A37FC8();
    v26 = sub_1C97A2CEC(&qword_1EC3C8588, &qword_1C9AA34D8);
    sub_1C97DAAF8(v26);
    v28 = sub_1C999E49C(v27);
    *(v23 + 16) = sub_1C97DA978(v28);
    sub_1C97A2CEC(&unk_1EC3CF160, &qword_1C9AA34E0);
    sub_1C97AA878();
    swift_allocObject();
    sub_1C97DA814();
    v29 = sub_1C9A37FC8();
    v30 = sub_1C97A2CEC(&qword_1EC3C8590, &qword_1C9AA34E8);
    sub_1C97DAAF8(v30);
    v32 = sub_1C999E49C(v31);
    *(v23 + 16) = sub_1C97DA978(v32);
    sub_1C97A2CEC(&unk_1EC3CF170, &qword_1C9AA34F0);
    sub_1C97AA878();
    swift_allocObject();
    sub_1C97DA814();
    v33 = sub_1C9A37FC8();
    v34 = sub_1C97A2CEC(&qword_1EC3C8598, &qword_1C9AA34F8);
    sub_1C97DAAF8(v34);
    v36 = sub_1C999E49C(v35);
    *(v23 + 16) = sub_1C97DA978(v36);
    sub_1C97A2CEC(&unk_1EC3CF180, &qword_1C9AA3500);
    sub_1C97AA878();
    swift_allocObject();
    sub_1C97DA814();
    v37 = sub_1C9A37FC8();
    v38 = sub_1C97A2CEC(&qword_1EC3C85A0, &qword_1C9AA3508);
    sub_1C97DAAF8(v38);
    v40 = sub_1C999E49C(v39);
    *(v23 + 16) = sub_1C97DA978(v40);
    sub_1C97A2CEC(&qword_1EC3CF190, &unk_1C9AA3510);
    sub_1C97AA878();
    swift_allocObject();
    sub_1C97DA814();
    v41 = sub_1C9A37FC8();

    v42 = v43;
    *v43 = v15;
    v42[1] = v20;
    v42[2] = v21;
    v42[3] = v25;
    v42[4] = v29;
    v42[5] = v33;
    v42[6] = v37;
    v42[7] = v41;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_1C999D7D0@<X0>(unint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v32 = a1;
  v5 = sub_1C97A2CEC(&qword_1EC3CF118, &qword_1C9AC0650);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - v7;
  v9 = sub_1C97A2CEC(&qword_1EC3CF120, &qword_1C9AC0658);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - v11;
  v34 = a2;
  sub_1C97A2CEC(&unk_1EC3CF128, &unk_1C9AC0660);
  sub_1C97AE67C(&unk_1EC3C56F0, &qword_1EC3CF110, &qword_1C9AC0648, MEMORY[0x1E695BF88]);
  sub_1C9A92048();
  sub_1C97A2CEC(&unk_1EC3CF138, &qword_1C9ACDD30);
  sub_1C9A91C98();
  (*(v6 + 8))(v8, v5);
  sub_1C97AE67C(qword_1EC3C5700, &qword_1EC3CF120, &qword_1C9AC0658, MEMORY[0x1E695BE28]);
  sub_1C9A92008();
  sub_1C97A2CEC(&qword_1EC3CF148, &qword_1C9AC0670);
  swift_allocObject();
  v13 = sub_1C98E3778();
  (*(v10 + 8))(v12, v9);
  v33 = v13;
  sub_1C97AE67C(qword_1EC3C5950, &qword_1EC3CF148, &qword_1C9AC0670, &unk_1C9AB4B80);
  v14 = sub_1C9A91F28();

  v15 = v32;
  v16 = [v32 channelCount];
  result = [v15 sampleRate];
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v18 < 9.22337204e18)
  {
    v32 = v16;
    v19 = v18;
    sub_1C97A2CEC(&qword_1EC3C8580, &qword_1C9AA34C8);
    v20 = swift_allocObject();
    *(v20 + 16) = [objc_opt_self() mapTableWithKeyOptions:0x10000 valueOptions:5];
    sub_1C97A2CEC(&unk_1EC3CF150, &qword_1C9AA34D0);
    swift_allocObject();
    v21 = sub_1C9A37FC8();
    sub_1C97A2CEC(&qword_1EC3C8588, &qword_1C9AA34D8);
    v22 = swift_allocObject();
    *(v22 + 16) = [objc_opt_self() mapTableWithKeyOptions:0x10000 valueOptions:5];
    sub_1C97A2CEC(&unk_1EC3CF160, &qword_1C9AA34E0);
    swift_allocObject();
    v23 = sub_1C9A37FC8();
    sub_1C97A2CEC(&qword_1EC3C8590, &qword_1C9AA34E8);
    v24 = swift_allocObject();
    *(v24 + 16) = [objc_opt_self() mapTableWithKeyOptions:0x10000 valueOptions:5];
    sub_1C97A2CEC(&unk_1EC3CF170, &qword_1C9AA34F0);
    swift_allocObject();
    v25 = sub_1C9A37FC8();
    sub_1C97A2CEC(&qword_1EC3C8598, &qword_1C9AA34F8);
    v26 = swift_allocObject();
    *(v26 + 16) = [objc_opt_self() mapTableWithKeyOptions:0x10000 valueOptions:5];
    sub_1C97A2CEC(&unk_1EC3CF180, &qword_1C9AA3500);
    swift_allocObject();
    v27 = sub_1C9A37FC8();
    sub_1C97A2CEC(&qword_1EC3C85A0, &qword_1C9AA3508);
    v28 = swift_allocObject();
    *(v28 + 16) = [objc_opt_self() mapTableWithKeyOptions:0x10000 valueOptions:5];
    sub_1C97A2CEC(&qword_1EC3CF190, &unk_1C9AA3510);
    swift_allocObject();
    v29 = sub_1C9A37FC8();

    v30 = v32;
    *a3 = v14;
    a3[1] = v30;
    a3[2] = v19;
    a3[3] = v21;
    a3[4] = v23;
    a3[5] = v25;
    a3[6] = v27;
    a3[7] = v29;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1C999DE0C(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1C999E048(a1);
  ObjectType = swift_getObjectType();
  v15 = v6[3];
  v23[0] = v6[2];
  v23[1] = v15;
  v16 = v6[5];
  v23[2] = v6[4];
  v23[3] = v16;
  v17 = (*(a2 + 16))(v23, ObjectType, a2);
  if (v7)
  {
    v18 = v7;
    a3(v7);
  }

  else
  {
    v24 = v17;
    sub_1C97AA878();
    v19 = swift_allocObject();
    *(v19 + 16) = a3;
    *(v19 + 24) = a4;
    sub_1C97AA878();
    v20 = swift_allocObject();
    *(v20 + 16) = a5;
    *(v20 + 24) = a6;

    sub_1C97A2CEC(&unk_1EC3D0A80, &qword_1C9AB34D8);
    sub_1C97AE67C(&unk_1EC3C4A80, &unk_1EC3D0A80, &qword_1C9AB34D8, MEMORY[0x1E695BED8]);
    v21 = sub_1C9A91FB8();

    sub_1C97A2CEC(&unk_1EC3C7850, &qword_1C9AC0640);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C9A9EDD0;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    *(inited + 48) = v21;
    sub_1C999E488();
    swift_beginAccess();

    swift_unknownObjectRetain();
    sub_1C98CFDF4(inited);
    swift_endAccess();
  }
}

uint64_t sub_1C999E048(uint64_t a1)
{
  v2 = v1;
  result = swift_beginAccess();
  v5 = 0;
  v6 = *(v2 + 16);
  v7 = *(v6 + 16);
  v8 = v6 + 48;
  while (v7 != v5)
  {
    if (*(v8 - 16) == a1)
    {

      sub_1C9A91DD8();
      sub_1C999E488();
      swift_beginAccess();
      sub_1C994612C(v5);
      swift_endAccess();

      return swift_unknownObjectRelease();
    }

    ++v5;
    v8 += 24;
  }

  return result;
}

uint64_t sub_1C999E110()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);

  v4 = 0;
  for (i = v1 + 48; ; i += 24)
  {
    if (v2 == v4)
    {
    }

    if (v4 >= *(v1 + 16))
    {
      break;
    }

    ++v4;
    v6 = *(i - 16);
    swift_unknownObjectRetain();

    sub_1C999E048(v6);

    result = swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

void sub_1C999E1D4(void *a1, uint64_t a2, double a3)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v4 = a1;
    sub_1C9A91E08();
  }

  else
  {
    sub_1C98066EC();
    swift_allocError();
    swift_willThrow();
  }
}

void *sub_1C999E2A8()
{

  return v0;
}

uint64_t sub_1C999E324()
{
  sub_1C999E2A8();

  return swift_deallocClassInstance();
}

uint64_t sub_1C999E388@<X0>(uint64_t *a2@<X8>, double a3@<D0>)
{
  type metadata accessor for AudioStreamAnalyzer(a3);
  result = sub_1C9A935C8();
  *a2 = result;
  return result;
}

uint64_t sub_1C999E49C(double a1)
{

  return objc_opt_self();
}

uint64_t sub_1C999E4B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E756F66 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1953722220 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

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

uint64_t sub_1C999E578(char a1)
{
  if (a1)
  {
    return 1953722220;
  }

  else
  {
    return 0x646E756F66;
  }
}

uint64_t sub_1C999E5A4(void *a1, int a2)
{
  v24 = a2;
  sub_1C97A2CEC(&qword_1EC3CF230, &qword_1C9AC0868);
  sub_1C97AE9C8();
  v22 = v4;
  v23 = v3;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v21 = sub_1C97A2CEC(&qword_1EC3CF238, &qword_1C9AC0870);
  sub_1C97AE9C8();
  v9 = v8;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = sub_1C97A2CEC(&qword_1EC3CF240, &qword_1C9AC0878);
  sub_1C97AE9C8();
  v15 = v14;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v21 - v17;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C999F260();
  sub_1C9A93DD8();
  v19 = (v15 + 8);
  if (v24)
  {
    v26 = 1;
    sub_1C999F2B4();
    sub_1C9A93988();
    (*(v22 + 8))(v7, v23);
  }

  else
  {
    v25 = 0;
    sub_1C999F308();
    sub_1C9A93988();
    (*(v9 + 8))(v12, v21);
  }

  return (*v19)(v18, v13);
}

uint64_t sub_1C999E830(unint64_t a1)
{
  v40 = sub_1C97A2CEC(&qword_1EC3CF1F8, &qword_1C9AC0848);
  sub_1C97AE9C8();
  v38 = v2;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v34 - v4;
  v6 = sub_1C97A2CEC(&qword_1EC3CF200, &qword_1C9AC0850);
  sub_1C97AE9C8();
  v37 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  v11 = sub_1C97A2CEC(&qword_1EC3CF208, &unk_1C9AC0858);
  sub_1C97AE9C8();
  v39 = v12;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  sub_1C97A5A8C(a1, *(a1 + 24));
  sub_1C999F260();
  v16 = v41;
  sub_1C9A93DB8();
  if (v16)
  {
    goto LABEL_8;
  }

  v35 = v6;
  v36 = v10;
  v41 = a1;
  v17 = v40;
  sub_1C9A93958();
  result = sub_1C98EE524();
  if (v20 == v21 >> 1)
  {
LABEL_7:
    v26 = sub_1C9A93648();
    swift_allocError();
    v28 = v27;
    sub_1C97A2CEC(&qword_1EC3C6F20, &qword_1C9AA0D80);
    *v28 = &type metadata for FileServerDiscoveryState;
    sub_1C9A93868();
    sub_1C9A93638();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v39 + 8))(v15, v11);
    a1 = v41;
LABEL_8:
    sub_1C97A592C(a1);
    return a1;
  }

  v34 = 0;
  if (v20 < (v21 >> 1))
  {
    a1 = *(v19 + v20);
    sub_1C98EE520();
    v23 = v22;
    v25 = v24;
    swift_unknownObjectRelease();
    if (v23 == v25 >> 1)
    {
      if (a1)
      {
        LODWORD(v37) = a1;
        v43 = 1;
        sub_1C999F2B4();
        sub_1C988A520(&type metadata for FileServerDiscoveryState.LostCodingKeys, &v43);
        swift_unknownObjectRelease();
        (*(v38 + 8))(v5, v17);
        v30 = sub_1C988A4F0();
        v31(v30);
        a1 = v37;
      }

      else
      {
        v42 = 0;
        sub_1C999F308();
        v29 = v36;
        sub_1C988A520(&type metadata for FileServerDiscoveryState.FoundCodingKeys, &v42);
        swift_unknownObjectRelease();
        (*(v37 + 8))(v29, v35);
        v32 = sub_1C988A4F0();
        v33(v32);
      }

      sub_1C97A592C(v41);
      return a1;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C999ECD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C999E4B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C999ECFC(uint64_t a1)
{
  v2 = sub_1C999F260();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C999ED38(uint64_t a1)
{
  v2 = sub_1C999F260();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C999ED74(uint64_t a1)
{
  v2 = sub_1C999F308();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C999EDB0(uint64_t a1)
{
  v2 = sub_1C999F308();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C999EDEC(uint64_t a1)
{
  v2 = sub_1C999F2B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C999EE28(uint64_t a1)
{
  v2 = sub_1C999F2B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C999EE64@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C999E830(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1C999EEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

id sub_1C999EF68()
{
  v1 = *(v0 + OBJC_IVAR___SNFileServerDiscoveryResult_impl + 16);
  v12 = *(v0 + OBJC_IVAR___SNFileServerDiscoveryResult_impl);
  v13 = v1;
  v2 = *(v0 + OBJC_IVAR___SNFileServerDiscoveryResult_impl + 48);
  v14 = *(v0 + OBJC_IVAR___SNFileServerDiscoveryResult_impl + 32);
  v15 = v2;
  v3 = type metadata accessor for SNFileServerInfo(*&v14);
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___SNFileServerInfo_impl];
  v7 = v14;
  v6 = v15;
  v8 = v13;
  *v5 = v12;
  *(v5 + 1) = v8;
  *(v5 + 2) = v7;
  *(v5 + 3) = v6;
  sub_1C9840AC4(&v12, v11);
  v10.receiver = v4;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id SNFileServerDiscoveryResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SNFileServerDiscoveryResult.__deallocating_deinit(uint64_t a1, double a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SNFileServerDiscoveryResult(a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_1C999F1A4()
{
  result = qword_1EC3CF1E0;
  if (!qword_1EC3CF1E0)
  {
    sub_1C97AA4F0(&qword_1EC3CF1E8, qword_1C9AC0750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF1E0);
  }

  return result;
}

unint64_t sub_1C999F20C()
{
  result = qword_1EC3CF1F0;
  if (!qword_1EC3CF1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF1F0);
  }

  return result;
}

unint64_t sub_1C999F260()
{
  result = qword_1EC3CF210;
  if (!qword_1EC3CF210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF210);
  }

  return result;
}

unint64_t sub_1C999F2B4()
{
  result = qword_1EC3CF220;
  if (!qword_1EC3CF220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF220);
  }

  return result;
}

unint64_t sub_1C999F308()
{
  result = qword_1EC3CF228;
  if (!qword_1EC3CF228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF228);
  }

  return result;
}

_BYTE *sub_1C999F35C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C999F45C()
{
  result = qword_1EC3CF248;
  if (!qword_1EC3CF248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF248);
  }

  return result;
}

unint64_t sub_1C999F4B4()
{
  result = qword_1EC3CF250;
  if (!qword_1EC3CF250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF250);
  }

  return result;
}

unint64_t sub_1C999F50C()
{
  result = qword_1EC3CF258;
  if (!qword_1EC3CF258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF258);
  }

  return result;
}

unint64_t sub_1C999F564()
{
  result = qword_1EC3CF260;
  if (!qword_1EC3CF260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF260);
  }

  return result;
}

unint64_t sub_1C999F5BC()
{
  result = qword_1EC3CF268;
  if (!qword_1EC3CF268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF268);
  }

  return result;
}

unint64_t sub_1C999F614()
{
  result = qword_1EC3CF270;
  if (!qword_1EC3CF270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF270);
  }

  return result;
}

unint64_t sub_1C999F66C()
{
  result = qword_1EC3CF278;
  if (!qword_1EC3CF278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF278);
  }

  return result;
}

uint64_t sub_1C999F6F0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  return swift_willThrowTypedImpl();
}

uint64_t sub_1C999F7C0()
{
  sub_1C97AA884();
  v0[7] = v1;
  v0[8] = v2;
  v0[5] = v3;
  v0[6] = v4;
  v0[3] = v5;
  v0[4] = v6;
  sub_1C97AA4F0(&unk_1EC3CA040, &qword_1C9A9C750);
  v0[9] = sub_1C9A93D88();
  v0[10] = sub_1C9A93258();
  sub_1C97AE9C8();
  v0[11] = v7;
  v0[12] = swift_task_alloc();
  v8 = sub_1C9A93258();
  v0[13] = v8;
  sub_1C97BE2AC(v8);
  v0[14] = v9;
  v0[15] = sub_1C99A4AE0();
  v0[16] = swift_task_alloc();
  v10 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C999F90C()
{
  sub_1C97DAA1C();
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];
  swift_getFunctionTypeMetadata0();
  sub_1C9A93AA8();
  swift_allocObject();
  v6 = sub_1C9A927C8();
  v8 = v7;
  v0[17] = v6;
  sub_1C97DAA28();
  v9 = swift_allocObject();
  v9[2] = v2;
  v9[3] = v5;
  v9[4] = v3;
  *v8 = &unk_1C9AC0C08;
  v8[1] = v9;
  sub_1C97DAA28();
  v10 = swift_allocObject();
  v10[2] = v2;
  v10[3] = v4;
  v10[4] = v1;
  v8[2] = &unk_1C9AC0C18;
  v8[3] = v10;
  sub_1C9A928B8();
  v11 = swift_task_alloc();
  v0[18] = v11;
  *(v11 + 16) = v2;

  swift_task_alloc();
  sub_1C97DA928();
  v0[19] = v12;
  *v12 = v13;
  v12[1] = sub_1C999FA9C;
  sub_1C98ADFC0();

  return sub_1C99A15A4(v14, v15, v16, v17, v18);
}

uint64_t sub_1C999FA9C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  v3 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C999FBB8()
{
  sub_1C99A4A98();
  v1 = (v0 + 120);
  v2 = (v0 + 104);
  (*(*(v0 + 112) + 16))(*(v0 + 120), *(v0 + 128), *(v0 + 104));
  if (sub_1C99A4A44() == 1)
  {
    v3 = *(*(v0 + 112) + 8);
    v3(*(v0 + 128), *(v0 + 104));
LABEL_5:
    v5 = *(v0 + 64);
    v3(*v1, *v2);
    sub_1C9855060();
    v9 = v5;
    goto LABEL_6;
  }

  (*(*(v0 + 88) + 32))(*(v0 + 96), *(v0 + 120), *(v0 + 80));
  if (sub_1C99A4A44() == 1)
  {
    v4 = *(v0 + 88);
    (*(*(v0 + 112) + 8))(*(v0 + 128), *(v0 + 104));
    v3 = *(v4 + 8);
    v2 = (v0 + 80);
    v1 = (v0 + 96);
    goto LABEL_5;
  }

  sub_1C999F6F0(*(v0 + 72), v0 + 16, *(v0 + 24));
  v12 = *(v0 + 64);
  v13 = *(v0 + 24);
  (*(*(v0 + 112) + 8))(*(v0 + 128), *(v0 + 104));
  v6 = v13;
  v7 = 0;
  v8 = 1;
  v9 = v12;
LABEL_6:
  sub_1C97ACC50(v6, v7, v8, v9);

  sub_1C97DA8DC();

  return v10();
}

uint64_t static AsyncUtils.sleepUntilCancelled()()
{
  sub_1C97AA884();
  v1 = sub_1C9A936C8();
  v0[7] = v1;
  sub_1C97BE2AC(v1);
  v0[8] = v2;
  v0[9] = sub_1C99A4AE0();
  v0[10] = swift_task_alloc();
  v3 = sub_1C9A936D8();
  v0[11] = v3;
  sub_1C97BE2AC(v3);
  v0[12] = v4;
  v0[13] = swift_task_alloc();
  v5 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C999FEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C99A4AA4();
  sub_1C99A4A98();
  if (sub_1C9A92A48())
  {

    sub_1C97DA91C();
    sub_1C99A4A1C();

    return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
  }

  else
  {
    sub_1C99A4A84();
    sub_1C9A93DE8();
    sub_1C9A93C28();
    sub_1C99A49EC();
    sub_1C99A4954();
    v25 = sub_1C99A3B30(v23, v24, MEMORY[0x1E69E8828]);
    sub_1C99A4AC0(v25);
    sub_1C99A496C();
    v28 = sub_1C99A3B30(v26, v27, MEMORY[0x1E69E8818]);
    sub_1C99A4A60(v28);
    v29 = sub_1C99A49C8(*(v13 + 8));
    v30(v29);
    v31 = swift_task_alloc();
    *(v12 + 128) = v31;
    *v31 = v12;
    sub_1C99A4984(v31);
    sub_1C99A4A38(v32);
    sub_1C99A4A1C();

    return MEMORY[0x1EEE6DE58](v33);
  }
}

uint64_t sub_1C99A0020()
{
  sub_1C97DA934();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97AA84C();
  *v4 = v3;
  v6 = v5[14];
  v7 = v5[10];
  v8 = v5[7];
  v9 = *v1;
  sub_1C97AA83C();
  *v10 = v9;
  v3[17] = v0;

  v6(v7, v8);
  if (!v0)
  {
    (*(v3[12] + 8))(v3[13], v3[11]);
  }

  sub_1C97AA8AC();
  sub_1C981E404();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C99A019C()
{
  sub_1C97DAA1C();
  v1 = *(v0 + 136);
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

  if (sub_1C9A92A48())
  {

    sub_1C97DA91C();
    sub_1C98ADFC0();

    __asm { BRAA            X1, X16 }
  }

  v4 = *(v0 + 64);
  v5 = sub_1C9A93DE8();
  v7 = v6;
  sub_1C9A93C28();
  *(v0 + 40) = v5;
  *(v0 + 48) = v7;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  sub_1C99A4954();
  sub_1C99A3B30(v8, v9, MEMORY[0x1E69E8828]);
  sub_1C9A93C08();
  sub_1C99A496C();
  sub_1C99A3B30(v10, v11, MEMORY[0x1E69E8818]);
  sub_1C9A936E8();
  v12 = sub_1C99A49C8(*(v4 + 8));
  v13(v12);
  v14 = swift_task_alloc();
  *(v0 + 128) = v14;
  *v14 = v0;
  sub_1C99A4984(v14);
  sub_1C99A4A38(v15);
  sub_1C98ADFC0();

  return MEMORY[0x1EEE6DE58](v16);
}

uint64_t sub_1C99A0368@<X0>(uint64_t a2@<X8>)
{
  v3 = *MEMORY[0x1E69E8650];
  v4 = sub_1C9A929A8();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t sub_1C99A03E0(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v61 = a2;
  v62 = a1;
  v4 = sub_1C97A2CEC(&qword_1EC3CA8D0, &qword_1C9AA47B0);
  v5 = sub_1C97DACE4(v4);
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v51 - v6;
  v7 = sub_1C9A929D8();
  sub_1C97AE9C8();
  v9 = v8;
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v55 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v52 = &v51 - v14;
  v15 = sub_1C9A929A8();
  v16 = sub_1C97DACE4(v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v51 - v17;
  sub_1C9A92A08();
  sub_1C97AE9C8();
  v59 = v20;
  v60 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v51 - v21;
  v23 = sub_1C9A93258();
  sub_1C97AE9C8();
  v25 = v24;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v51 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v51 - v30;
  sub_1C9855060();
  sub_1C97ACC50(v32, v33, v34, v7);
  v63 = a3;
  v64 = v31;
  sub_1C99A0368(v18);
  v54 = v22;
  sub_1C9A92A18();
  v56 = v25;
  v35 = *(v25 + 16);
  v53 = v31;
  v58 = v23;
  v35(v29, v31, v23);
  if (sub_1C97ABF20(v29, 1, v7) == 1)
  {
    (*(v56 + 8))(v29, v58);
    result = sub_1C9A93778("Fatal error", 11, 2, 0xD00000000000001ELL, 0x80000001C9AD6200, "SoundAnalysis/AsyncUtils.swift", 30, 2, 90);
    __break(1u);
  }

  else
  {
    v36 = *(v9 + 32);
    v37 = v52;
    v36(v52, v29, v7);
    sub_1C9A92988();
    sub_1C9855060();
    sub_1C97ACC50(v38, v39, v40, v41);
    v42 = v55;
    (*(v9 + 16))(v55, v37, v7);
    v43 = (*(v9 + 80) + 48) & ~*(v9 + 80);
    v44 = swift_allocObject();
    *(v44 + 2) = 0;
    *(v44 + 3) = 0;
    *(v44 + 4) = a3;
    *(v44 + 5) = v61;
    v36(&v44[v43], v42, v7);

    sub_1C99A9128();
    v46 = v45;
    v47 = v60;
    WitnessTable = swift_getWitnessTable();
    v49 = v54;
    AsyncSequence.toAnyAsyncSequence()(v47, WitnessTable);
    (*(v9 + 8))(v37, v7);
    (*(v59 + 8))(v49, v47);
    *v62 = v65;
    (*(v56 + 8))(v53, v58);
    return v46;
  }

  return result;
}

uint64_t sub_1C99A08C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C9A929D8();
  v6 = sub_1C9A93258();
  (*(*(v6 - 8) + 8))(a2, v6);
  (*(*(v5 - 8) + 16))(a2, a1, v5);

  return sub_1C97ACC50(a2, 0, 1, v5);
}

uint64_t sub_1C99A098C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C99A09B0, 0, 0);
}

uint64_t sub_1C99A09B0()
{
  sub_1C97AA884();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1C99A0A98;

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1C99A0A98()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  v3 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C99A0B98()
{
  sub_1C97AA884();
  sub_1C9A929D8();
  sub_1C9A929C8();
  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C99A0BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v6 = sub_1C9A929D8();
  v5[13] = v6;
  v7 = *(v6 - 8);
  v5[14] = v7;
  v5[15] = *(v7 + 64);
  v5[16] = swift_task_alloc();
  sub_1C97A2CEC(&qword_1EC3CA8D0, &qword_1C9AA47B0);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C99A0D0C, 0, 0);
}

uint64_t sub_1C99A0D0C()
{
  swift_getFunctionTypeMetadata0();
  sub_1C98550EC();
  v1 = sub_1C9A927A8();
  v34 = v1;
  sub_1C98550EC();
  if (v1 == sub_1C9A92878())
  {
LABEL_13:
    v21 = swift_task_alloc();
    *(v0 + 152) = v21;
    v22 = sub_1C97A2CEC(&qword_1EC3C8988, &qword_1C9AA4818);
    *v21 = v0;
    v21[1] = sub_1C99A1144;
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v27 = *(v0 + 80) + 32;
    v28 = **(v0 + 72);
    v26 = *(v0 + 120) + 7;
    v29 = *(v0 + 112);
    while (1)
    {
      sub_1C98550EC();
      v2 = sub_1C9A92858();
      sub_1C9A927D8();
      if ((v2 & 1) == 0)
      {
        break;
      }

      v30 = *(v0 + 144);
      v33 = *(v0 + 136);
      v3 = *(v0 + 128);
      v4 = *(v0 + 104);
      v31 = *(v0 + 96);
      v5 = *(v0 + 88);
      v32 = *(v27 + 16 * v1);

      sub_1C9A928A8();
      v6 = sub_1C9A92988();
      sub_1C9855060();
      sub_1C97ACC50(v7, v8, v9, v6);
      (*(v29 + 16))(v3, v5, v4);
      v10 = (*(v29 + 80) + 40) & ~*(v29 + 80);
      v11 = swift_allocObject();
      *(v11 + 2) = 0;
      *(v11 + 3) = 0;
      *(v11 + 4) = v31;
      (*(v29 + 32))(&v11[v10], v3, v4);
      *&v11[(v26 + v10) & 0xFFFFFFFFFFFFFFF8] = v32;
      sub_1C99A4644(v30, v33, &qword_1EC3CA8D0, &qword_1C9AA47B0);
      v12 = sub_1C97ABF20(v33, 1, v6);

      v13 = *(v0 + 136);
      if (v12 == 1)
      {
        sub_1C97AE434(*(v0 + 136), &qword_1EC3CA8D0, &qword_1C9AA47B0);
      }

      else
      {
        sub_1C9A92978();
        sub_1C97AEB3C();
        (*(v14 + 8))(v13, v6);
      }

      if (*(v11 + 2))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v15 = sub_1C9A92928();
        v17 = v16;
        swift_unknownObjectRelease();
      }

      else
      {
        v15 = 0;
        v17 = 0;
      }

      v18 = swift_allocObject();
      *(v18 + 16) = &unk_1C9AC0C68;
      *(v18 + 24) = v11;
      v19 = v17 | v15;
      if (v17 | v15)
      {
        v19 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v15;
        *(v0 + 40) = v17;
      }

      v20 = *(v0 + 144);
      *(v0 + 48) = 1;
      *(v0 + 56) = v19;
      *(v0 + 64) = v28;
      swift_task_create();

      sub_1C97AE434(v20, &qword_1EC3CA8D0, &qword_1C9AA47B0);
      sub_1C98550EC();
      v1 = v34;
      if (v34 == sub_1C9A92878())
      {
        goto LABEL_13;
      }
    }

    v23 = sub_1C9A935F8();
    __break(1u);
  }

  return MEMORY[0x1EEE6D898](v23, v24, v22);
}

uint64_t sub_1C99A1144()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  sub_1C97DA91C();

  return v3();
}

uint64_t sub_1C99A1280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a4;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  v10 = sub_1C9A92998();
  v7[5] = v10;
  v7[6] = *(v10 - 8);
  v7[7] = swift_task_alloc();
  v13 = (a5 + *a5);
  v11 = swift_task_alloc();
  v7[8] = v11;
  *v11 = v7;
  v11[1] = sub_1C99A1414;

  return v13(v9);
}

uint64_t sub_1C99A1414()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  v3 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C99A14F8()
{
  sub_1C97DA934();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_1C9A929D8();
  sub_1C9A929B8();
  (*(v2 + 8))(v1, v3);

  sub_1C97DA91C();

  return v4();
}

uint64_t sub_1C99A15A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = sub_1C982F8C0();
  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C99A15D4()
{
  sub_1C97DAA1C();
  v14 = v0;
  v1 = *(v0 + 64);
  v12 = *(v0 + 48);
  v2 = sub_1C99A03E0(&v13, *(v0 + 40), v1);
  v3 = v13;
  *(v0 + 72) = v2;
  *(v0 + 80) = *(&v3 + 1);
  *(v0 + 16) = v3;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v12;
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  v8 = type metadata accessor for AnyAsyncSequence(0, v1, v6, v7);
  WitnessTable = swift_getWitnessTable();
  *v5 = v0;
  v5[1] = sub_1C99A1710;
  v10 = *(v0 + 32);

  return MEMORY[0x1EEE6DB20](v10, &unk_1C9AC0C30, v4, v8, WitnessTable);
}

uint64_t sub_1C99A1710()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97AA84C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (!v0)
  {
  }

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C99A1814()
{
  sub_1C97AA884();
  sub_1C9A92A28();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C99A189C()
{
  sub_1C97AA884();

  return swift_unexpectedError();
}

uint64_t sub_1C99A1904(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = a2(a1);
  v4 = *(v2 + 8);
  v5 = v3 & 1;

  return v4(v5);
}

uint64_t sub_1C99A1970(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  v7 = (a2 + *a2);
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_1C99A1A5C;

  return v7();
}

uint64_t sub_1C99A1A5C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 48) = v3;

  v4 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C99A1B48()
{
  sub_1C97DAA1C();
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v0[2] = v1;
  *(swift_task_alloc() + 16) = v3;
  sub_1C97A2CEC(&qword_1EC3C89D0, &unk_1C9AA4898);
  sub_1C97AA4F0(&unk_1EC3CA040, &qword_1C9A9C750);
  v4 = sub_1C9A93D88();
  sub_1C984EF50(sub_1C99A4624, v4, v5, v2);

  sub_1C97DA91C();

  return v6();
}

id sub_1C99A1C60@<X0>(void **a1@<X0>, void **a3@<X8>)
{
  v3 = *a1;
  *a3 = *a1;
  sub_1C97AA4F0(&unk_1EC3CA040, &qword_1C9A9C750);
  sub_1C9A93D88();
  swift_storeEnumTagMultiPayload();
  return v3;
}

uint64_t sub_1C99A1CE0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v9 = swift_task_alloc();
  v4[4] = v9;
  *v9 = v4;
  v9[1] = sub_1C99A1D9C;

  return sub_1C9996560(a1, a2, a3, a4);
}

uint64_t sub_1C99A1D9C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  v3 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C99A1E80()
{
  sub_1C97AA884();
  v1 = *(v0 + 16);
  sub_1C97AA4F0(&unk_1EC3CA040, &qword_1C9A9C750);
  v2 = sub_1C9A93D88();
  sub_1C97ACC50(v1, 0, 1, v2);
  sub_1C97DA91C();

  return v3();
}

BOOL sub_1C99A1F14(uint64_t a1, uint64_t a2)
{
  sub_1C97AA4F0(&unk_1EC3CA040, &qword_1C9A9C750);
  v3 = sub_1C9A93D88();
  return sub_1C97ABF20(a1, 1, v3) != 1;
}

uint64_t sub_1C99A1F7C()
{
  sub_1C97AA884();
  v0[5] = v1;
  v0[6] = v2;
  v0[3] = v3;
  v0[4] = v4;
  v0[2] = v5;
  v6 = sub_1C97A2CEC(&unk_1EC3CF2A0, &qword_1C9AC0C70);
  sub_1C97BE2AC(v6);
  v0[7] = v7;
  v0[8] = *(v8 + 64);
  v0[9] = swift_task_alloc();
  v9 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C99A2040()
{
  sub_1C97DA934();
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  sub_1C99A4644(v0[3], v1, &unk_1EC3CF2A0, &qword_1C9AC0C70);
  v6 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v7 = swift_allocObject();
  v0[10] = v7;
  sub_1C99A46A8(v1, v7 + v6);
  sub_1C97DAA28();
  v8 = swift_allocObject();
  v0[11] = v8;
  v8[2] = v3;
  v8[3] = v5;
  v8[4] = v4;

  swift_task_alloc();
  sub_1C97DA928();
  v0[12] = v9;
  *v9 = v10;
  v9[1] = sub_1C99A2194;
  sub_1C981E404();

  return sub_1C999F7C0();
}

uint64_t sub_1C99A2194()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97AA84C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    sub_1C97DA8DC();

    return v10();
  }
}

uint64_t sub_1C99A22C8()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C99A2338(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_1C9A936D8();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  sub_1C97A2CEC(&unk_1EC3CF2A0, &qword_1C9AC0C70);
  v1[9] = swift_task_alloc();
  v3 = sub_1C9A936C8();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C99A248C, 0, 0);
}

uint64_t sub_1C99A248C()
{
  sub_1C97AA95C();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  sub_1C99A4644(*(v0 + 40), v1, &unk_1EC3CF2A0, &qword_1C9AC0C70);
  if (sub_1C97ABF20(v1, 1, v2) == 1)
  {
    sub_1C97AE434(*(v0 + 72), &unk_1EC3CF2A0, &qword_1C9AC0C70);
    v3 = swift_task_alloc();
    *(v0 + 104) = v3;
    *v3 = v0;
    v3[1] = sub_1C99A264C;

    return static AsyncUtils.sleepUntilCancelled()();
  }

  else
  {
    (*(*(v0 + 88) + 32))(*(v0 + 96), *(v0 + 72), *(v0 + 80));
    *(v0 + 24) = 0;
    *(v0 + 16) = 0;
    *(v0 + 32) = 1;
    sub_1C9A93C28();
    v5 = swift_task_alloc();
    *(v0 + 112) = v5;
    sub_1C99A4954();
    v8 = sub_1C99A3B30(v6, v7, MEMORY[0x1E69E8828]);
    *v5 = v0;
    v5[1] = sub_1C99A2794;
    v9 = *(v0 + 96);
    v10 = *(v0 + 64);
    v11 = *(v0 + 48);

    return MEMORY[0x1EEE6DA68](v9, v0 + 16, v10, v11, v8);
  }
}

uint64_t sub_1C99A264C()
{
  sub_1C97AA95C();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3(0);
}

uint64_t sub_1C99A2794()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  v5 = v4[8];
  v6 = v4[7];
  v7 = v4[6];
  v8 = *v1;
  sub_1C97AA83C();
  *v9 = v8;
  *(v10 + 120) = v0;

  (*(v6 + 8))(v5, v7);
  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C99A28EC()
{
  sub_1C97AA95C();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  sub_1C99A3B78();
  v4 = swift_allocError();
  *v5 = 0;
  (*(v2 + 8))(v1, v3);

  sub_1C9840CC0();

  return v6(v4);
}

uint64_t sub_1C99A29A8()
{
  sub_1C97AA884();
  v1 = v0[15];
  (*(v0[11] + 8))(v0[12], v0[10]);

  sub_1C9840CC0();

  return v2(0);
}

uint64_t sub_1C99A2A3C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C97D9C3C;

  return v6(a1);
}

uint64_t static AsyncUtils.failAfterTimeoutNoCancel<A>(deadline:_:)()
{
  sub_1C97DA934();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1C9A93258();
  v0[4] = v3;
  sub_1C97BE2AC(v3);
  v0[5] = v4;
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  swift_task_alloc();
  sub_1C97DA928();
  v0[8] = v5;
  *v5 = v6;
  v5[1] = sub_1C99A2C5C;

  return sub_1C99A1F7C();
}

uint64_t sub_1C99A2C5C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 72) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C99A2D58()
{
  sub_1C97DAA1C();
  v1 = v0[5];
  (*(v1 + 16))(v0[6], v0[7], v0[4]);
  v2 = sub_1C99A4A44();
  v3 = *(v1 + 8);
  if (v2 == 1)
  {
    v4 = v0[7];
    v5 = v0[4];
    v3(v0[6], v5);
    sub_1C99A3B78();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
    v3(v4, v5);

    sub_1C97DA91C();
  }

  else
  {
    v8 = v0[6];
    v9 = v0[3];
    v10 = v0[2];
    v3(v0[7], v0[4]);
    sub_1C97AEB3C();
    (*(v11 + 32))(v10, v8, v9);

    sub_1C97DA8DC();
  }

  return v7();
}

uint64_t sub_1C99A2EC8()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t static AsyncUtils.failAfterTimeoutNoCancel<A>(deadline:mutating:_:)()
{
  sub_1C97AA884();
  v0[5] = v1;
  v0[6] = v2;
  v0[3] = v3;
  v0[4] = v4;
  v0[2] = v5;
  v6 = *(v2 - 8);
  v0[7] = v6;
  v0[8] = *(v6 + 64);
  v0[9] = sub_1C99A4AE0();
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v7 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C99A2FF0()
{
  sub_1C99A4AA4();
  sub_1C99A4A98();
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[4];
  v6 = v0[5];
  v8 = *(v5 + 16);
  v8(v1, v0[3], v4);
  v8(v2, v1, v4);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  v0[12] = v10;
  *(v10 + 16) = v4;
  v11 = *(v5 + 32);
  v0[13] = v11;
  v0[14] = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v11(v10 + v9, v2, v4);
  v12 = (v10 + ((v3 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v12 = v7;
  v12[1] = v6;

  swift_task_alloc();
  sub_1C97DA928();
  v0[15] = v13;
  *v13 = v14;
  v13[1] = sub_1C99A3160;
  sub_1C99A4A1C();

  return static AsyncUtils.failAfterTimeoutNoCancel<A>(deadline:_:)();
}

uint64_t sub_1C99A3160()
{
  sub_1C97AA95C();
  v2 = *v1;
  sub_1C97AA83C();
  *v3 = v2;
  *v3 = *v1;
  v2[16] = v0;

  if (!v0)
  {
    v4 = v2[6];
    v5 = v2[7];
    v6 = v2[3];
    v7 = *(v5 + 8);
    v2[17] = v7;
    v2[18] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v6, v4);
  }

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C99A32B4()
{
  sub_1C97DAA1C();
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  (*(v0 + 136))(*(v0 + 88), v3);
  v1(v4, v2, v3);

  sub_1C97DA8DC();

  return v5();
}

uint64_t sub_1C99A3368()
{
  sub_1C97AA95C();
  (*(v0[7] + 8))(v0[11], v0[6]);

  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C99A33FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C99A3424, 0, 0);
}

uint64_t sub_1C99A3424()
{
  sub_1C97AA884();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = *(v0[6] - 8);
  v0[7] = v4;
  (*(v4 + 16))(v3, v1);
  v8 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1C99A356C;
  v6 = sub_1C99A4A38(v0[2]);

  return v8(v6);
}

uint64_t sub_1C99A356C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 72) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C97DA91C();

    return v10();
  }
}

uint64_t sub_1C99A3684()
{
  sub_1C97AA884();
  (*(v0[7] + 8))(v0[2], v0[6]);
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C99A36F0()
{
  sub_1C97DA934();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  *(v1 + 56) = v0;
  v12 = sub_1C9A936C8();
  *(v1 + 64) = v12;
  sub_1C97BE2AC(v12);
  *(v1 + 72) = v13;
  *(v1 + 80) = sub_1C99A4AE0();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 40) = v11;
  *(v1 + 48) = v9;
  *(v1 + 16) = v7;
  *(v1 + 24) = v5;
  *(v1 + 32) = v3 & 1;
  sub_1C982F8C0();
  sub_1C981E404();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C99A37D0()
{
  sub_1C97DAA1C();
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  sub_1C9A936D8();
  sub_1C99A4954();
  sub_1C99A3B30(v4, v5, MEMORY[0x1E69E8828]);
  sub_1C9A93C08();
  sub_1C99A496C();
  sub_1C99A3B30(v6, v7, MEMORY[0x1E69E8818]);
  sub_1C9A936E8();
  v8 = *(v3 + 8);
  v0[12] = v8;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v2);
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_1C99A3938;
  v10 = sub_1C99A4A38(v0[11]);

  return MEMORY[0x1EEE6DE58](v10);
}

uint64_t sub_1C99A3938()
{
  sub_1C97DA934();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97AA84C();
  *v4 = v3;
  v6 = v5[12];
  v7 = v5[11];
  v8 = v5[8];
  v9 = *v1;
  sub_1C97AA83C();
  *v10 = v9;
  *(v3 + 120) = v0;

  v6(v7, v8);
  if (!v0)
  {

    sub_1C97DA8DC();
    sub_1C981E404();

    __asm { BRAA            X1, X16 }
  }

  sub_1C97AA8AC();
  sub_1C981E404();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C99A3ACC()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C99A3B30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C99A3B78()
{
  result = qword_1EC3CF290;
  if (!qword_1EC3CF290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF290);
  }

  return result;
}

uint64_t sub_1C99A3BCC()
{
  sub_1C97DA934();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97DA5D0;
  sub_1C99A4A10();
  sub_1C981E404();

  return sub_1C99A33FC(v3, v4, v5, v6, v7);
}

_BYTE *storeEnumTagSinglePayload for AsyncUtils(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for AsyncUtils.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C99A3E64()
{
  result = qword_1EC3CF298;
  if (!qword_1EC3CF298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF298);
  }

  return result;
}

uint64_t sub_1C99A3EB8()
{
  sub_1C97AA95C();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = sub_1C97AA858(v1);
  *v2 = v3;
  v2[1] = sub_1C99A3FA0;
  v4 = sub_1C99A4A10();

  return v6(v4);
}

uint64_t sub_1C99A3FA0()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  sub_1C97DA8DC();

  return v3();
}

uint64_t sub_1C99A4080()
{
  sub_1C97AA95C();
  sub_1C99A49DC();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C99A49AC(v1);

  return sub_1C99A1970(v3, v4, v5, v6);
}

uint64_t sub_1C99A410C()
{
  sub_1C97AA95C();
  sub_1C99A49DC();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C99A49AC(v1);

  return sub_1C99A1CE0(v3, v4, v5, v6);
}

uint64_t sub_1C99A41A0()
{
  sub_1C97DA934();
  sub_1C99A49DC();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C99A4258;

  return sub_1C99A1904(v0, v2);
}

uint64_t sub_1C99A4258()
{
  sub_1C97AA884();
  v2 = v1;
  sub_1C97AA890();
  v3 = *v0;
  sub_1C97AA83C();
  *v4 = v3;

  sub_1C9840CC0();

  return v5(v2);
}

uint64_t sub_1C99A4348()
{
  sub_1C97DAA1C();
  v1 = v0[4];
  v2 = sub_1C9A929D8();
  sub_1C97DACE4(v2);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[5];
  v6 = swift_task_alloc();
  v7 = sub_1C97AA858(v6);
  *v7 = v8;
  v7[1] = sub_1C97D9C3C;
  v9 = sub_1C99A4A10();

  return sub_1C99A098C(v9, v3, v4, v5, v10, v1);
}

uint64_t sub_1C99A4440()
{
  sub_1C97DA934();
  v2 = v1;
  v4 = v3;
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = swift_task_alloc();
  v9 = sub_1C97AA858(v8);
  *v9 = v10;
  v9[1] = sub_1C97DA5D0;

  return sub_1C99A0BF8(v4, v2, v6, v7, v5);
}

uint64_t sub_1C99A44F8()
{
  sub_1C97DAA1C();
  v1 = sub_1C9A929D8();
  sub_1C97BE2AC(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1C97DA5D0;
  sub_1C98ADFC0();

  return sub_1C99A1280(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C99A4644(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1C97A2CEC(a3, a4);
  sub_1C97AEB3C();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C99A46A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C97A2CEC(&unk_1EC3CF2A0, &qword_1C9AC0C70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C99A4718()
{
  sub_1C97AA884();
  v1 = sub_1C97A2CEC(&unk_1EC3CF2A0, &qword_1C9AC0C70);
  sub_1C97DACE4(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  v5 = sub_1C97AA858(v4);
  *v5 = v6;
  v5[1] = sub_1C99A47E0;

  return sub_1C99A2338(v0 + v3);
}

uint64_t sub_1C99A47E0()
{
  sub_1C97AA884();
  v2 = v1;
  sub_1C97AA890();
  v3 = *v0;
  sub_1C97AA83C();
  *v4 = v3;

  sub_1C9840CC0();

  return v5(v2);
}

uint64_t sub_1C99A48C8()
{
  sub_1C97AA95C();
  sub_1C99A49DC();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C99A49AC(v1);

  return sub_1C99A2A3C(v3, v4);
}

uint64_t sub_1C99A49C8@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 112) = a1;
  *(v3 + 120) = v1 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v2;
}

void sub_1C99A49EC()
{
  *(v1 + 40) = v0;
  *(v1 + 48) = v2;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  *(v1 + 32) = 1;
}

uint64_t sub_1C99A4A44()
{

  return sub_1C97ABF20(v1, 1, v0);
}

uint64_t sub_1C99A4A60(uint64_t a1)
{

  return sub_1C9A936E8();
}

uint64_t sub_1C99A4AC0(uint64_t a1)
{

  return sub_1C9A93C08();
}

uint64_t sub_1C99A4AE0()
{

  return swift_task_alloc();
}

void sub_1C99A4AF8(double a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v1 = objc_opt_self();
  v2 = [v1 defaultManager];
  sub_1C9A91518();
  v3 = sub_1C9A92478();

  v4 = [v2 fileExistsAtPath_];

  if (v4)
  {
    v5 = [v1 defaultManager];
    v6 = sub_1C9A91488();
    v10[0] = 0;
    v7 = [v5 removeItemAtURL:v6 error:v10];

    if (v7)
    {
      v8 = v10[0];
    }

    else
    {
      v9 = v10[0];
      sub_1C9A913C8();

      swift_willThrow();
    }
  }
}

uint64_t sub_1C99A4C48(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C9A91408();
  sub_1C97AE9C8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97AEAD8();
  v8 = v7 - v6;
  (*(v4 + 104))(v7 - v6, *MEMORY[0x1E6968F70], v2);
  sub_1C98449A8();
  sub_1C9A91538();
  return (*(v4 + 8))(v8, v2);
}

id sub_1C99A4D94()
{
  v0 = sub_1C9A91558();
  sub_1C97AE9C8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97AEAD8();
  v6 = v5 - v4;
  v7 = [objc_opt_self() defaultManager];
  sub_1C9A913F8();
  sub_1C9A91518();
  (*(v2 + 8))(v6, v0);
  v8 = sub_1C9A92478();

  v9 = [v7 fileExistsAtPath_];

  return v9;
}

id sub_1C99A4EE4@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1C9A91558();
  sub_1C97AE9C8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AEAD8();
  v10 = v9 - v8;
  sub_1C9A914D8();
  v11 = [objc_opt_self() defaultManager];
  v12 = sub_1C9A91488();
  v17[0] = 0;
  v13 = [v11 createDirectoryAtURL:v12 withIntermediateDirectories:a1 & 1 attributes:0 error:v17];

  v14 = v17[0];
  if (v13)
  {
    (*(v6 + 32))(a2, v10, v4);
    return v14;
  }

  else
  {
    v16 = v17[0];
    sub_1C9A913C8();

    swift_willThrow();
    return (*(v6 + 8))(v10, v4);
  }
}

uint64_t sub_1C99A5090()
{
  v0 = sub_1C9A91B58();
  sub_1C9922D38(v0, qword_1EC3D3108);
  sub_1C97BFF6C(v0, qword_1EC3D3108);
  return sub_1C9A91B48();
}

double SNFeaturePrint.timeRange.setter(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v1 + OBJC_IVAR___SNFeaturePrint_impl;
  *v3 = *a1;
  *(v3 + 8) = *(a1 + 8);
  *(v3 + 16) = *(a1 + 16);
  result = *(a1 + 32);
  *(v3 + 32) = result;
  *(v3 + 40) = v2;
  return result;
}

uint64_t sub_1C99A5134(void *a1, void *a2)
{
  v5 = type metadata accessor for ShapedArray(0);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97AEAD8();
  v8 = v7 - v6;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9A93DC8();
  sub_1C9990138(a2);
  if (!v2)
  {
    sub_1C97BDE74(v10, v10[3]);
    sub_1C99A78F4(&unk_1EC3CF320);
    sub_1C9A93B58();
    sub_1C9991530(v8);
  }

  return sub_1C97A592C(v10);
}

uint64_t sub_1C99A5264(void *a1)
{
  v2 = type metadata accessor for ShapedArray(0);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97AEAD8();
  v5 = v4 - v3;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9A93DA8();
  sub_1C97A5A8C(v8, v8[3]);
  sub_1C99A78F4(&qword_1EC3CF318);
  sub_1C9A93B38();
  v6 = sub_1C99906C0(v5);
  sub_1C9991530(v5);
  sub_1C97A592C(v8);
  sub_1C97A592C(a1);
  return v6;
}

uint64_t sub_1C99A541C()
{
  sub_1C9A93CC8();
  sub_1C9A931F8();
  return sub_1C9A93D18();
}

uint64_t sub_1C99A5460(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v2;
  v9[2] = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v4;
  v8[2] = *(a2 + 32);
  v5 = *(a2 + 48);
  if (!static TimeRange.== infix(_:_:)(v9, v8) || v3 != v5)
  {
    return 0;
  }

  sub_1C97BD318(v6, 0, &qword_1EC3C54A0, 0x1E69E58C0);
  return sub_1C9A931E8() & 1;
}

uint64_t sub_1C99A5504(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6152656D6974 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001C9ADB350 == a2;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x5665727574616566 && a2 == 0xED0000726F746365)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9A93B18();

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

uint64_t sub_1C99A562C(char a1)
{
  if (!a1)
  {
    return 0x676E6152656D6974;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0x5665727574616566;
}

uint64_t sub_1C99A5698(void *a1)
{
  v3 = v1;
  v5 = sub_1C97A2CEC(&qword_1EC3CF2E0, &unk_1C9AC0EB8);
  sub_1C97AE9C8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  v11 = *(v3 + 7);
  v15 = *(v3 + 6);
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99A7568();
  sub_1C9A93DD8();
  v12 = v3[1];
  v16 = *v3;
  v17 = v12;
  v18 = v3[2];
  v19 = 0;
  sub_1C97BD12C();
  sub_1C99A7934();
  sub_1C9A93A18();
  if (!v2)
  {
    *&v16 = v15;
    v19 = 1;
    sub_1C97A2CEC(&qword_1EC3CE930, &qword_1C9ABD940);
    sub_1C9980128(&unk_1EC3CE940, MEMORY[0x1E69E6538], &protocol conformance descriptor for <> RawRepresentableWrapper<A>);
    sub_1C99A7934();
    sub_1C9A93A18();
    *&v16 = v11;
    v19 = 2;
    sub_1C99A7610();
    sub_1C99A7934();
    sub_1C9A93A18();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C99A5894(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[5];
  v5 = v1[6];
  MEMORY[0x1CCA919B0](*v1);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v2);
  MEMORY[0x1CCA919B0](v3);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v4);
  MEMORY[0x1CCA91980](v5);
  return sub_1C9A931F8();
}

uint64_t sub_1C99A594C()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[5];
  v5 = v0[6];
  sub_1C9A93CC8();
  MEMORY[0x1CCA919B0](v1);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v2);
  MEMORY[0x1CCA919B0](v3);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v4);
  MEMORY[0x1CCA91980](v5);
  sub_1C9A931F8();
  return sub_1C9A93D18();
}

uint64_t sub_1C99A5A38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C97A2CEC(&qword_1EC3CF2C0, &unk_1C9AC0EA8);
  sub_1C97AE9C8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99A7568();
  sub_1C9A93DB8();
  if (!v2)
  {
    v30 = 0;
    v11 = sub_1C97BD0D8();
    sub_1C9802184(&type metadata for TimeRange, &v30, v12, v13, v11);
    v26 = v23;
    v27 = v24;
    v28 = v25;
    sub_1C97A2CEC(&qword_1EC3CE930, &qword_1C9ABD940);
    v29 = 1;
    sub_1C9980128(&qword_1EC3CF2D0, MEMORY[0x1E69E6560], &protocol conformance descriptor for <> RawRepresentableWrapper<A>);
    sub_1C9A938F8();
    v15 = v22;
    v29 = 2;
    v16 = sub_1C99A75BC();
    sub_1C9802184(&type metadata for CodableMultiArray, &v29, v17, v18, v16);
    (*(v7 + 8))(v10, v5);
    v19 = v22;
    v20 = v27;
    *a2 = v26;
    *(a2 + 16) = v20;
    *(a2 + 32) = v28;
    *(a2 + 48) = v15;
    *(a2 + 56) = v19;
  }

  return sub_1C97A592C(a1);
}

uint64_t sub_1C99A5C7C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C99A5264(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C99A5CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C99A5504(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C99A5D00(uint64_t a1)
{
  v2 = sub_1C99A7568();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99A5D3C(uint64_t a1)
{
  v2 = sub_1C99A7568();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99A5D80()
{
  sub_1C9A93CC8();
  sub_1C99A5894(v1);
  return sub_1C9A93D18();
}

double SNFeaturePrint.timeRange.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___SNFeaturePrint_impl;
  v3 = *(v1 + OBJC_IVAR___SNFeaturePrint_impl + 40);
  *a1 = *(v1 + OBJC_IVAR___SNFeaturePrint_impl);
  *(a1 + 8) = *(v2 + 8);
  *(a1 + 16) = *(v2 + 16);
  result = *(v2 + 32);
  *(a1 + 32) = result;
  *(a1 + 40) = v3;
  return result;
}

double sub_1C99A5EDC@<D0>(_OWORD *a1@<X8>)
{
  SNFeaturePrint.timeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

void (*SNFeaturePrint.timeRange.modify(void *a1))(void **a1)
{
  v3 = sub_1C97A2C48(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  SNFeaturePrint.timeRange.getter((v3 + 1));
  return sub_1C99A5F84;
}

void sub_1C99A5F84(void **a1)
{
  v1 = *a1;
  SNFeaturePrint.timeRange.setter(*a1 + 8);

  free(v1);
}

uint64_t (*SNFeaturePrint.featurePrintType.modify(void *a1))()
{
  v2 = OBJC_IVAR___SNFeaturePrint_impl;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = *(v1 + v2 + 48);
  return sub_1C99A6070;
}

void (*SNFeaturePrint.featureVector.modify(void *a1))(uint64_t *a1)
{
  v2 = OBJC_IVAR___SNFeaturePrint_impl;
  a1[1] = v1;
  a1[2] = v2;
  v3 = *(v1 + v2 + 56);
  *a1 = v3;
  v4 = v3;
  return sub_1C99A61C8;
}

void sub_1C99A61C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1] + a1[2];
  v3 = *(v2 + 56);
  *(v2 + 56) = v1;
}

id sub_1C99A61E0()
{
  ObjectType = swift_getObjectType();
  sub_1C97A2CEC(&unk_1EC3C6E20, &qword_1C9A9FF60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C9A9DF30;
  sub_1C97BD318(COERCE_DOUBLE(1), 0, &qword_1EC3C54B0, 0x1E696AD98);
  *(v2 + 32) = sub_1C9A931C8();
  v3 = objc_allocWithZone(MEMORY[0x1E695FED0]);
  v5 = sub_1C9A1AED4(v2, 65568, v4);
  v6 = *(MEMORY[0x1E6960C98] + 8);
  v7 = *(MEMORY[0x1E6960C98] + 16);
  v8 = *(MEMORY[0x1E6960C98] + 24);
  v9 = *(MEMORY[0x1E6960C98] + 32);
  v10 = *(MEMORY[0x1E6960C98] + 40);
  v11 = &v0[OBJC_IVAR___SNFeaturePrint_impl];
  *v11 = *MEMORY[0x1E6960C98];
  *(v11 + 1) = v6;
  *(v11 + 2) = v7;
  *(v11 + 3) = v8;
  *(v11 + 4) = v9;
  *(v11 + 5) = v10;
  *(v11 + 6) = 0;
  *(v11 + 7) = v5;
  v13.receiver = v0;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

void *SNFeaturePrint.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  sub_1C9841D88(OBJC_IVAR___SNFeaturePrint_impl);
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___SNFeaturePrint_impl];
  v6 = v12[3];
  v8 = v12[0];
  v7 = v12[1];
  *(v5 + 2) = v12[2];
  *(v5 + 3) = v6;
  *v5 = v8;
  *(v5 + 1) = v7;
  sub_1C97A5F68(v12, v11);
  v10.receiver = v4;
  v10.super_class = ObjectType;
  result = objc_msgSendSuper2(&v10, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t SNFeaturePrint.hash.getter()
{
  v1 = *(v0 + OBJC_IVAR___SNFeaturePrint_impl + 16);
  v6 = *(v0 + OBJC_IVAR___SNFeaturePrint_impl);
  v7 = v1;
  v2 = *(v0 + OBJC_IVAR___SNFeaturePrint_impl + 48);
  v8 = *(v0 + OBJC_IVAR___SNFeaturePrint_impl + 32);
  v9 = v2;
  sub_1C9A93CC8();
  MEMORY[0x1CCA919B0](v6);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v7);
  MEMORY[0x1CCA919B0](*(&v7 + 1));
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](*(&v8 + 1));
  MEMORY[0x1CCA91980](v9);
  sub_1C97A5F68(&v6, v5);
  sub_1C9A931F8();
  v3 = sub_1C9A93D18();
  sub_1C99A7494(&v6);
  return v3;
}

uint64_t SNFeaturePrint.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1C97A2C7C(a1, &v25);
  if (v26)
  {
    sub_1C97A2D34(&v25, v24);
    sub_1C97BD360(v24, v23);
    if (swift_dynamicCast())
    {
      v3 = v22;
      v4 = *(v1 + OBJC_IVAR___SNFeaturePrint_impl + 16);
      v17[0] = *(v1 + OBJC_IVAR___SNFeaturePrint_impl);
      v17[1] = v4;
      v5 = *(v1 + OBJC_IVAR___SNFeaturePrint_impl + 48);
      v7 = *(v1 + OBJC_IVAR___SNFeaturePrint_impl);
      v6 = *(v1 + OBJC_IVAR___SNFeaturePrint_impl + 16);
      v18 = *(v1 + OBJC_IVAR___SNFeaturePrint_impl + 32);
      v19 = v5;
      v9 = *&v22[OBJC_IVAR___SNFeaturePrint_impl + 32];
      v8 = *&v22[OBJC_IVAR___SNFeaturePrint_impl + 48];
      v10 = *&v22[OBJC_IVAR___SNFeaturePrint_impl + 16];
      v20[0] = *&v22[OBJC_IVAR___SNFeaturePrint_impl];
      v20[1] = v10;
      v20[2] = v9;
      v21 = v8;
      v15[0] = v7;
      v15[1] = v6;
      v15[2] = v18;
      v11 = *&v22[OBJC_IVAR___SNFeaturePrint_impl + 16];
      v16[0] = *&v22[OBJC_IVAR___SNFeaturePrint_impl];
      v16[1] = v11;
      v16[2] = *&v22[OBJC_IVAR___SNFeaturePrint_impl + 32];
      if (static TimeRange.== infix(_:_:)(v15, v16) && v19 == v21)
      {
        sub_1C97BD318(v12, 0, &qword_1EC3C54A0, 0x1E69E58C0);
        sub_1C97A5F68(v17, v15);
        sub_1C97A5F68(v20, v15);
        v13 = sub_1C9A931E8();
        sub_1C99A7494(v20);
        sub_1C99A7494(v17);

LABEL_9:
        sub_1C97A592C(v24);
        return v13 & 1;
      }
    }

    v13 = 0;
    goto LABEL_9;
  }

  v13 = 0;
  return v13 & 1;
}

id SNFeaturePrint.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1C97A23AC(1819307369, 0xE400000000000000);
  v3 = objc_allocWithZone(ObjectType);
  v4 = &v3[OBJC_IVAR___SNFeaturePrint_impl];
  v5 = v11;
  *v4 = v10;
  *(v4 + 1) = v5;
  v6 = v13;
  *(v4 + 2) = v12;
  *(v4 + 3) = v6;
  v9.receiver = v3;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  swift_getObjectType();
  sub_1C97FB318();
  swift_deallocPartialClassInstance();
  return v7;
}

Swift::Void __swiftcall SNFeaturePrint.encode(with:)(NSCoder with)
{
  sub_1C9841D88(OBJC_IVAR___SNFeaturePrint_impl);
  sub_1C97A5F68(v3, v2);
  sub_1C97A0594(v3, 1819307369, 0xE400000000000000, with.super.isa);
  sub_1C99A7494(v3);
}

id sub_1C99A69D4(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for ShapedArray(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1C97AEAD8();
  v9 = v8 - v7;
  sub_1C9990138(a2);
  v10 = sub_1C99906C0(v9);
  sub_1C9991530(v9);
  v11 = MEMORY[0x1E6960C98];
  v12 = *(MEMORY[0x1E6960C98] + 40);
  v13 = &v2[OBJC_IVAR___SNFeaturePrint_impl];
  *v13 = *MEMORY[0x1E6960C98];
  *(v13 + 1) = *(v11 + 8);
  *(v13 + 1) = *(v11 + 16);
  *(v13 + 4) = *(v11 + 32);
  *(v13 + 5) = v12;
  *(v13 + 6) = a1;
  *(v13 + 7) = v10;
  v16.receiver = v2;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_init);

  return v14;
}

id sub_1C99A6B4C(const float *a1, const float *a2, vDSP_Length a3)
{
  v6 = sub_1C989DBCC(a1, a2, a3);
  v7 = sub_1C989DBCC(a1, a1, a3);
  v8 = sub_1C989DBCC(a2, a2, a3);
  v9 = sqrt(v7 * v8);
  v10 = v6 / v9;
  v11 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *&v12 = v10;
  return [v11 initWithFloat_];
}

void sub_1C99A6C30(void *a1, void *a2)
{
  v4 = [a1 shape];
  sub_1C97BD318(v5, 0, &qword_1EC3C54B0, 0x1E696AD98);
  v6 = sub_1C9A92798();

  v7 = [a2 shape];
  v8 = sub_1C9A92798();

  v30 = sub_1C980937C(v6, v8, v9);

  v10 = [a1 dataType];
  v12 = v10 != [a2 dataType] || objc_msgSend(a1, sel_dataType) != 65568;
  type metadata accessor for SNUtils(v11);
  v13 = [a1 shape];
  v14 = sub_1C9A92798();

  sub_1C9A17104(v14);
  v16 = v15;

  v17 = [a1 shape];
  v18 = sub_1C9A92798();

  v19 = sub_1C9A931C8();
  v31 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v29[2] = &v31;
  sub_1C989AA8C(sub_1C99A7688, v29, v18);
  v21 = v20;

  if ((sub_1C998F684(a1) & 1) != 0 && (v23 = sub_1C998F684(a2), !((v16 > 1 || (v30 & 1) == 0 || (v23 & 1) == 0) | (v21 | v12) & 1)))
  {
    v24 = [a1 dataPointer];
    v25 = [a2 dataPointer];
    v26 = [a1 count];
    sub_1C989DBCC(v24, v25, v26);
    v27 = sub_1C989DBCC(v24, v24, v26);
    v28 = sub_1C989DBCC(v25, v25, v26);
    sqrt(v27 * v28);
  }

  else
  {
    type metadata accessor for SNError(v22);
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD000000000000022, 0x80000001C9ADC330);
    swift_willThrow();
  }
}

void sub_1C99A6F6C(void *a1, void *a2)
{
  sub_1C99A6C30(a1, a2);
  if (!v2)
  {
    v4 = v3;
    v5 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    LODWORD(v6) = v4;
    [v5 initWithFloat_];
  }
}

void SNFeaturePrint.description.getter()
{
  ObjectType = swift_getObjectType();
  *&v31[0] = 0;
  *(&v31[0] + 1) = 0xE000000000000000;
  sub_1C9A935B8();
  v32.receiver = v0;
  v32.super_class = ObjectType;
  v2 = &off_1E8348000;
  v3 = objc_msgSendSuper2(&v32, sel_description);
  v4 = sub_1C9A924A8();
  v6 = v5;

  v33 = v4;
  v34 = v6;
  MEMORY[0x1CCA90230](0x203A65707954203BLL, 0xE800000000000000);
  v7 = &v0[OBJC_IVAR___SNFeaturePrint_impl];
  *&v31[0] = *&v0[OBJC_IVAR___SNFeaturePrint_impl + 48];
  v8 = sub_1C9A93A98();
  MEMORY[0x1CCA90230](v8);

  MEMORY[0x1CCA90230](0xD000000000000011, 0x80000001C9ADC290);
  v9 = [v7[7] shape];
  sub_1C97BD318(v10, 0, &qword_1EC3C54B0, 0x1E696AD98);
  sub_1C97FB318();
  v11 = sub_1C9A92798();

  v12 = sub_1C97BDEE0();
  if (!v12)
  {

    v15 = MEMORY[0x1E69E7CC0];
LABEL_12:
    v21 = MEMORY[0x1CCA90460](v15, MEMORY[0x1E69E6530]);
    v23 = v22;

    MEMORY[0x1CCA90230](v21, v23);

    MEMORY[0x1CCA90230](0x203A656D6954203BLL, 0xE800000000000000);
    SNFeaturePrint.timeRange.getter(v31);
    v24 = objc_opt_self();
    v30[0] = v31[0];
    v30[1] = v31[1];
    v30[2] = v31[2];
    v25 = [v24 valueWithCMTimeRange_];
    v26 = [v25 v2[368]];
    v27 = sub_1C9A924A8();
    v29 = v28;

    MEMORY[0x1CCA90230](v27, v29);

    return;
  }

  v13 = v12;
  *&v31[0] = MEMORY[0x1E69E7CC0];
  sub_1C97B7C28(0, v12 & ~(v12 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    v15 = *&v31[0];
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1CCA912B0](v14, v11);
      }

      else
      {
        v16 = *(v11 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = [v16 integerValue];

      *&v31[0] = v15;
      v20 = *(v15 + 16);
      v19 = *(v15 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1C97B7C28(v19 > 1, v20 + 1, 1);
        v15 = *&v31[0];
      }

      ++v14;
      *(v15 + 16) = v20 + 1;
      *(v15 + 8 * v20 + 32) = v18;
    }

    while (v13 != v14);

    v2 = &off_1E8348000;
    goto LABEL_12;
  }

  __break(1u);
}

id SNFeaturePrint.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1C99A7450@<D0>(_OWORD *a1@<X8>)
{
  SNFeaturePrint.timeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

unint64_t sub_1C99A7514()
{
  result = qword_1EC3CF2B8;
  if (!qword_1EC3CF2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF2B8);
  }

  return result;
}

unint64_t sub_1C99A7568()
{
  result = qword_1EC3CF2C8;
  if (!qword_1EC3CF2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF2C8);
  }

  return result;
}

unint64_t sub_1C99A75BC()
{
  result = qword_1EC3CF2D8;
  if (!qword_1EC3CF2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF2D8);
  }

  return result;
}

unint64_t sub_1C99A7610()
{
  result = qword_1EC3CF2E8;
  if (!qword_1EC3CF2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF2E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FeaturePrint.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C99A7798()
{
  result = qword_1EC3CF2F8;
  if (!qword_1EC3CF2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF2F8);
  }

  return result;
}

unint64_t sub_1C99A77F0()
{
  result = qword_1EC3CF300;
  if (!qword_1EC3CF300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF300);
  }

  return result;
}

unint64_t sub_1C99A7848()
{
  result = qword_1EC3CF308;
  if (!qword_1EC3CF308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF308);
  }

  return result;
}

unint64_t sub_1C99A78A0()
{
  result = qword_1EC3CF310;
  if (!qword_1EC3CF310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF310);
  }

  return result;
}

uint64_t sub_1C99A78F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ShapedArray(255);
    sub_1C97FB318();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C99A7954(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    for (i = result + 32; ; i += 32)
    {
      sub_1C97BD360(i, v15);
      sub_1C97A2D34(v15, &v14);
      sub_1C97A2CEC(&qword_1EC3CF330, &qword_1C9AC10F8);
      v3 = swift_dynamicCast();
      if ((v3 & 1) == 0)
      {
        break;
      }

      result = sub_1C99A7C38(v12);
      if (!--v1)
      {
        return result;
      }
    }

    sub_1C99A7CA0(v3, v4, v5, v6, v7, v8, v9, v10, v12[0], v12[1], v13);
    type metadata accessor for SNError(v11);
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD000000000000028, 0x80000001C9ADC360);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C99A7A68(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1C9A93698();
    v5 = a1 + 32;
    while (1)
    {
      sub_1C97BD360(v5, v22);
      sub_1C97BD360(v22, v20);
      sub_1C97A2CEC(&qword_1EC3CF330, &qword_1C9AC10F8);
      v6 = swift_dynamicCast();
      if (!v6)
      {
        sub_1C99A7CA0(v6, v7, v8, v9, v10, v11, v12, v13, v17, v18, v19);
        sub_1C98066EC();
        swift_allocError();
        swift_willThrow();
        v15 = v22;
        goto LABEL_10;
      }

      sub_1C979B054(&v17, v21);
      sub_1C97A5A8C(v21, v21[3]);
      sub_1C99D9680(&v17);
      if (v1)
      {
        break;
      }

      sub_1C97A5A8C(&v17, *(&v18 + 1));
      sub_1C9A93B08();
      sub_1C97A592C(v22);
      sub_1C97A592C(&v17);
      sub_1C97A592C(v21);
      sub_1C9A93678();
      sub_1C9A936A8();
      sub_1C9A936B8();
      sub_1C9A93688();
      v5 += 32;
      if (!--v2)
      {
        v3 = v23;
        goto LABEL_7;
      }
    }

    sub_1C97A592C(v22);
    v15 = v21;
LABEL_10:
    sub_1C97A592C(v15);
  }

  else
  {
LABEL_7:
    sub_1C97E9434(v3);
    v2 = v14;
  }

  return v2;
}

uint64_t sub_1C99A7C38(uint64_t a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3CF338, &unk_1C9AC1100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C99A7CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  a11 = 0;
  a9 = 0u;
  a10 = 0u;

  return sub_1C99A7C38(&a9);
}

uint64_t sub_1C99A7CC0(const void *a1)
{
  __dst[3] = &unk_1F492EC60;
  __dst[4] = &off_1F492E680;
  v4 = swift_allocObject();
  __dst[0] = v4;
  v5 = *(v1 + 32);
  v6 = *(v1 + 16);
  *(v4 + 16) = *v1;
  *(v4 + 32) = v6;
  *(v4 + 48) = v5;

  v7 = sub_1C99A7FC0(__dst, 0xD00000000000003CLL, 0x80000001C9ADC390);
  if (v2)
  {
    return sub_1C97A592C(__dst);
  }

  v9 = v7;
  sub_1C97A592C(__dst);
  memcpy(__dst, a1, 0x41uLL);
  type metadata accessor for SNSystemAudioAnalyzerLocal(0);
  swift_allocObject();
  sub_1C97A6264(a1, &v10);
  return sub_1C99462E0(v9 & 1, __dst);
}

uint64_t sub_1C99A7DD8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  sub_1C9911468(a1, a2, a3, a4, a5, a6, a7, a8, v9);
  sub_1C97AEA5C();
  return sub_1C99A7E08();
}

uint64_t sub_1C99A7E08()
{
  v1 = swift_allocObject();
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);

  v3 = sub_1C97DB4B0();

  return v3;
}

uint64_t sub_1C99A7ECC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  sub_1C9911468(a1, a2, a3, a4, a5, a6, a7, a8, v9);
  sub_1C97AEA5C();
  return sub_1C99A7EFC();
}

uint64_t sub_1C99A7EFC()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v1;
  v6[4] = v4;
  v6[5] = v3;
  v6[6] = v5;

  v7 = sub_1C97DB4B0();

  return v7;
}

uint64_t sub_1C99A7FC0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[3];
  v7 = a1[4];
  sub_1C97A5A8C(a1, v6);
  result = (*(v7 + 8))(&v9, a2, a3, v6, v7);
  if (!v3)
  {
    if (v10)
    {
      sub_1C97A2D34(&v9, v11);
      sub_1C97BD360(v11, &v9);
      if (swift_dynamicCast())
      {
        sub_1C97A592C(v11);
        return v12;
      }

      else
      {
        sub_1C99A8198();
        swift_allocError();
        swift_willThrow();
        return sub_1C97A592C(v11);
      }
    }

    else
    {
      sub_1C97A59D0(&v9);
      return 2;
    }
  }

  return result;
}

uint64_t sub_1C99A810C@<X0>(void *__src@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  memcpy(__dst, __src, 0x41uLL);
  v6 = a2[1];
  v9 = *a2;
  v10 = v6;
  v11 = *(a2 + 4);
  result = sub_1C99A80E8(__dst);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

unint64_t sub_1C99A8198()
{
  result = qword_1EC3CF340;
  if (!qword_1EC3CF340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF340);
  }

  return result;
}

uint64_t sub_1C99A81EC()
{

  return swift_deallocObject();
}

id sub_1C99A824C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 8);
  v6 = *(v5 + 16);
  v6(&v12, a3, v5);
  v7 = v12;
  v6(&v11, a3, v5);
  v8 = v11;
  v9 = [v7 isEqual_];

  return v9;
}

uint64_t sub_1C99A8300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 + 8) + 16))(&v6, a2);
  v3 = v6;
  v4 = [v6 hash];

  return MEMORY[0x1CCA91980](v4);
}

uint64_t sub_1C99A837C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  switch(a4 >> 62)
  {
    case 1uLL:
      v5 = a3 >> 32;
      if (a3 >> 32 >= a3)
      {
        v4 = a3;
        goto LABEL_6;
      }

      __break(1u);
      break;
    case 2uLL:
      v4 = *(a3 + 16);
      v5 = *(a3 + 24);
LABEL_6:
      result = sub_1C9901FA0(v4, v5, sub_1C99A8FB8);
      break;
    default:
      sub_1C99A910C();
      result = sub_1C9886B10();
      break;
  }

  return result;
}

uint64_t sub_1C99A842C(uint64_t a1, int a2, uint64_t a3)
{
  v11 = MEMORY[0x1CCA8F2D0](a3);
  v12 = v6;
  v8[2] = a1;
  v9 = a2;
  sub_1C99A8B54(sub_1C99A8F74, v8);
  result = sub_1C97A5978(v11, v12);
  if (!v3)
  {
    return v10;
  }

  return result;
}

void *sub_1C99A84BC(uint64_t a1, void *(*a2)(void *__return_ptr, uint64_t *, uint64_t *))
{
  v6[2] = *MEMORY[0x1E69E9840];
  v5 = a1;
  result = a2(v6, &v5, &v4);
  if (!v2)
  {
    return v6[0];
  }

  return result;
}

uint64_t sub_1C99A853C(uint64_t a1, uint64_t a2, void *a3, unsigned int a4)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = a4;
  v6 = a3[3];
  v7 = a3[4];
  sub_1C97A5A8C(a3, v6);
  return (*(v7 + 8))(1, v9, 1, a1, a2, 0, 0, 0, 0, v6, v7);
}

unint64_t sub_1C99A8608@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v12 = a2[3];
  v13 = a2[4];
  sub_1C97A5A8C(a2, v12);
  result = (*(v13 + 8))(2, a1, 1, 0, 0, 0, 0, a3, a4, v12, v13);
  v15 = v6;
  if (!v6)
  {
    v16 = HIDWORD(result);
    if (a3)
    {
      if (a4 - a3 >= v16)
      {
        v17 = v16 + a3;
LABEL_6:
        *a6 = a3;
        a6[1] = v17;
        return result;
      }
    }

    else
    {
      v17 = 0;
      if (!v16)
      {
        goto LABEL_6;
      }
    }

    sub_1C9A935B8();

    type metadata accessor for SNError(v18);
    v19 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v19);

    MEMORY[0x1CCA90230](0x20746F67202CLL, 0xE600000000000000);
    v20 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v20);

    v15 = sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD000000000000028, 0x80000001C9ADC400);

    result = swift_willThrow();
  }

  *a5 = v15;
  return result;
}

unint64_t sub_1C99A87FC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, void *a8@<X8>)
{
  v16 = a2[3];
  v15 = a2[4];
  sub_1C97A5A8C(a2, v16);
  result = (*(v15 + 8))(3, a1, 1, a3, a4, 0, 0, a5, a6, v16, v15);
  v18 = v8;
  if (!v8)
  {
    v19 = HIDWORD(result);
    if (a5)
    {
      if (a6 - a5 >= v19)
      {
        v20 = v19 + a5;
LABEL_6:
        *a8 = a5;
        a8[1] = v20;
        return result;
      }
    }

    else
    {
      v20 = 0;
      if (!v19)
      {
        goto LABEL_6;
      }
    }

    sub_1C9A935B8();
    v21 = MEMORY[0x1CCA90230](0xD00000000000002BLL, 0x80000001C9ADC3D0);
    type metadata accessor for SNError(v21);
    v22 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v22);

    MEMORY[0x1CCA90230](0x20746F67202CLL, 0xE600000000000000);
    v23 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v23);

    v18 = sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0, 0xE000000000000000);

    result = swift_willThrow();
  }

  *a7 = v18;
  return result;
}

void *sub_1C99A8A10(uint64_t a1, uint64_t a2, void x2_0, uint64_t a3, int a4)
{
  v9 = a2;
  v6[2] = a3;
  v7 = a4;
  v8 = a1;
  return sub_1C99A8B54(sub_1C99A8AC8, v6);
}

uint64_t sub_1C99A8A60@<X0>(unsigned int a1@<W3>, uint64_t *a2@<X8>)
{
  result = sub_1C99A84BC(a1, sub_1C99A8F4C);
  if (!v2)
  {
    result = sub_1C98FBBC4(result, v5);
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_1C99A8AEC@<X0>(unsigned int a1@<W3>, uint64_t *a2@<X8>)
{
  result = sub_1C99A84BC(a1, sub_1C99A8F94);
  if (!v2)
  {
    result = sub_1C98FBBC4(result, v5);
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_1C99A8B54(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v3 = v2;
  v15 = *MEMORY[0x1E69E9840];
  v5 = *v2;
  v4 = v2[1];
  switch(v4 >> 62)
  {
    case 1uLL:
      v10 = v4 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1C97A5978(v5, v4);
      *v3 = xmmword_1C9AA9A40;
      sub_1C97A5978(0, 0xC000000000000000);
      v11 = v5 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_10;
      }

      if (v11 < v5)
      {
        goto LABEL_14;
      }

      if (sub_1C9A91308() && __OFSUB__(v5, sub_1C9A91338()))
      {
        goto LABEL_15;
      }

      sub_1C9A91348();
      swift_allocObject();
      v12 = sub_1C9A912F8();

      v10 = v12;
LABEL_10:
      if (v11 < v5)
      {
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
      }

      sub_1C99A8EA4(v5, v5 >> 32, a1);

      *v3 = v5;
      v3[1] = v10 | 0x4000000000000000;
      return result;
    case 2uLL:

      sub_1C97A5978(v5, v4);
      *&v14 = v5;
      *(&v14 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_1C9AA9A40;
      sub_1C97A5978(0, 0xC000000000000000);
      sub_1C9A91588();
      v9 = *(&v14 + 1);
      result = sub_1C99A8EA4(*(v14 + 16), *(v14 + 24), a1);
      *v3 = v14;
      v3[1] = v9 | 0x8000000000000000;
      return result;
    case 3uLL:
      *(&v14 + 7) = 0;
      *&v14 = 0;
      return a1(&v14, &v14);
    default:
      sub_1C97A5978(v5, v4);
      *&v14 = v5;
      WORD4(v14) = v4;
      BYTE10(v14) = BYTE2(v4);
      BYTE11(v14) = BYTE3(v4);
      BYTE12(v14) = BYTE4(v4);
      BYTE13(v14) = BYTE5(v4);
      BYTE14(v14) = BYTE6(v4);
      result = a1(&v14, &v14 + BYTE6(v4));
      v8 = DWORD2(v14) | ((WORD6(v14) | (BYTE14(v14) << 16)) << 32);
      *v3 = v14;
      v3[1] = v8;
      return result;
  }
}

uint64_t sub_1C99A8EA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = sub_1C9A91308();
  if (!result)
  {
    goto LABEL_10;
  }

  v7 = result;
  result = sub_1C9A91338();
  v8 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v11 = sub_1C9A91328();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  return a3(v7 + v8, v7 + v8 + v12);
}

_BYTE *storeEnumTagSinglePayload for SPUServiceUtils.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C99A90B8()
{
  result = qword_1EC3CF348;
  if (!qword_1EC3CF348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF348);
  }

  return result;
}

void sub_1C99A9128()
{
  sub_1C97BE460();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1C97A2CEC(&qword_1EC3CA8D0, &qword_1C9AA47B0);
  sub_1C97DACE4(v9);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C99ACFF0(v11, v18);
  v12 = sub_1C9A92988();
  v13 = sub_1C97ABF20(v0, 1, v12);

  if (v13 == 1)
  {
    sub_1C97AE434(v0, &qword_1EC3CA8D0, &qword_1C9AA47B0);
  }

  else
  {
    sub_1C9A92978();
    sub_1C97AEB3C();
    (*(v14 + 8))(v0, v12);
  }

  v15 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v15)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1C97AE434(v6, &qword_1EC3CA8D0, &qword_1C9AA47B0);
    sub_1C97AA878();
    v17 = swift_allocObject();
    *(v17 + 16) = v4;
    *(v17 + 24) = v2;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_1C9A92928();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1C9A92508();
  sub_1C97AA878();
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  *(v16 + 24) = v2;

  swift_task_create();

  sub_1C97AE434(v6, &qword_1EC3CA8D0, &qword_1C9AA47B0);

LABEL_9:
  sub_1C97BE478();
}

void sub_1C99A93C4()
{
  sub_1C97BE460();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1C97A2CEC(&qword_1EC3CA8D0, &qword_1C9AA47B0);
  sub_1C97DACE4(v9);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C99ACFF0(v11, v18);
  v12 = sub_1C9A92988();
  v13 = sub_1C97ABF20(v0, 1, v12);

  if (v13 == 1)
  {
    sub_1C97AE434(v0, &qword_1EC3CA8D0, &qword_1C9AA47B0);
  }

  else
  {
    sub_1C9A92978();
    sub_1C97AEB3C();
    (*(v14 + 8))(v0, v12);
  }

  v15 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v15)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1C97AE434(v6, &qword_1EC3CA8D0, &qword_1C9AA47B0);
    sub_1C97AA878();
    v17 = swift_allocObject();
    *(v17 + 16) = v4;
    *(v17 + 24) = v2;
    sub_1C97A2CEC(&qword_1EC3C89D0, &unk_1C9AA4898);
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_1C9A92928();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1C9A92508();
  sub_1C97AA878();
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  *(v16 + 24) = v2;

  sub_1C97A2CEC(&qword_1EC3C89D0, &unk_1C9AA4898);
  swift_task_create();

  sub_1C97AE434(v6, &qword_1EC3CA8D0, &qword_1C9AA47B0);

LABEL_9:
  sub_1C97BE478();
}

uint64_t sub_1C99A9674()
{
  v59 = *MEMORY[0x1E69E9840];
  if (*(v0 + 96) == 1)
  {
    if (qword_1EC3C5520 != -1)
    {
LABEL_33:
      sub_1C97DAA64(&qword_1EC3C5520);
    }

    v1 = sub_1C9A91B58();
    sub_1C9887EC4(v1, qword_1EC3D3108);
    v2 = sub_1C9A91B38();
    v3 = sub_1C9A92F88();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1C9788000, v2, v3, "Queue already running", v4, 2u);
      sub_1C9840CEC();
    }

    return 1;
  }

  else
  {
    v6 = v0;
    sub_1C99AD040();
    swift_beginAccess();
    *(v0 + 104) = 0;
    v7 = *(v0 + 72);
    v8 = *(v6 + 80);
    v9 = *(v6 + 88);
    v10 = *(v6 + 56);
    v11 = *(v6 + 64);
    v12 = *(v6 + 16);
    type metadata accessor for SNAudioRecordingQueueScheduler(0);
    v13 = swift_allocObject();

    v14 = v10;
    v15 = v12;
    sub_1C99A9D10(v11, v7, v8, v9, v14, v15);
    *(v6 + 112) = v13;

    [v15 streamDescription];
    v16 = *(v6 + 48);
    [v16 opaqueSessionID];
    swift_beginAccess();
    LODWORD(v8) = AudioQueueNewInputWithAudioSession();
    swift_endAccess();
    sub_1C9A3B558(v8);
    v18 = *(v6 + 104);
    if (v18)
    {
      (*(v6 + 32))(*(v6 + 104), v16);
      v19 = 5;
      do
      {
        LODWORD(v20) = *([v15 streamDescription] + 6);
        v21 = v20 * 0.512;
        [v15 sampleRate];
        v23 = v21 * v22;
        outBuffer = 0;
        if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        if (v23 <= -1.0)
        {
          goto LABEL_31;
        }

        if (v23 >= 4294967300.0)
        {
          goto LABEL_32;
        }

        v24 = v23;
        v25 = AudioQueueAllocateBuffer(v18, v23, &outBuffer);
        if (v25 != sub_1C9A91BF8())
        {
          goto LABEL_21;
        }

        v27 = outBuffer;
        if (!outBuffer)
        {
          type metadata accessor for SNError(v26);
          sub_1C98573F8();
          v39 = v47 + 2;
          goto LABEL_23;
        }

        outBuffer->mAudioDataByteSize = v24;
        v25 = AudioQueueEnqueueBuffer(v18, v27, 0, 0);
        if (v25 != sub_1C9A91BF8())
        {
LABEL_21:
          type metadata accessor for SNError(v26);
          v40 = sub_1C9A924A8();
          v42 = v41;
          v43 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
          v44 = sub_1C9A3B688(v40, v42, v25, 0);
          v57 = 0;
          v58 = 0xE000000000000000;
          sub_1C9A935B8();

          v57 = 0xD00000000000001FLL;
          v58 = 0x80000001C9AD7D50;
          v45 = sub_1C9A93A98();
          MEMORY[0x1CCA90230](v45);

          v46 = sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, v44, v57, v58);

          goto LABEL_24;
        }

        --v19;
      }

      while (v19);
      v28 = sub_1C99ACF50();
      AudioQueueAddPropertyListener(v28, v29, v30, v13);
      if (qword_1EC3C5520 != -1)
      {
        sub_1C97DAA64(&qword_1EC3C5520);
      }

      v31 = sub_1C9A91B58();
      sub_1C9887EC4(v31, qword_1EC3D3108);
      v32 = sub_1C9A91B38();
      v33 = sub_1C9A92FC8();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_1C9788000, v32, v33, "Starting audio queue", v34, 2u);
        sub_1C9840CEC();
      }

      v35 = AudioQueueStart(v18, 0);
      sub_1C9A3B558(v35);

      result = 1;
      *(v6 + 96) = 1;
    }

    else
    {
      type metadata accessor for SNError(v17);
      sub_1C98573F8();
      v39 = v38 + 5;
LABEL_23:
      v46 = sub_1C9820900(v36, v39, v37);
LABEL_24:
      swift_willThrow();

      if (qword_1EC3C5520 != -1)
      {
        sub_1C97DAA64(&qword_1EC3C5520);
      }

      v48 = sub_1C9A91B58();
      sub_1C9887EC4(v48, qword_1EC3D3108);
      v49 = v46;
      v50 = sub_1C9A91B38();
      v51 = sub_1C9A92FA8();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = sub_1C99AD08C();
        v53 = sub_1C99AD014();
        *v52 = 138412290;
        v54 = v46;
        v55 = _swift_stdlib_bridgeErrorToNSError();
        *(v52 + 4) = v55;
        *v53 = v55;
        _os_log_impl(&dword_1C9788000, v50, v51, "failed to start audio %@", v52, 0xCu);
        sub_1C97AE434(v53, &unk_1EC3C86A0, &qword_1C9A9F830);
        sub_1C99ACF88();
        sub_1C9840CEC();
      }

      else
      {
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_1C99A9D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_1C9A91738();
  v13 = (v6 + OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_bufferHandler);
  *v13 = a1;
  v13[1] = a2;
  v14 = (v6 + OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_interruptionHandler);
  *v14 = a3;
  v14[1] = a4;
  *(v6 + OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_recordFormat) = a6;

  v15 = a6;
  result = os_transaction_create();
  if (!result)
  {
    goto LABEL_9;
  }

  *(v6 + OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_transaction) = result;
  sub_1C99AD058(*(MEMORY[0x1E6960CC0] + 16));
  sub_1C99AD058(v17);
  v18 = *[v15 streamDescription];

  v19 = v18 * 45.0;
  *(v6 + OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_eventHandlerQueue) = a5;
  sub_1C97A2CEC(&qword_1EC3CF368, &qword_1C9AC1378);
  sub_1C97F07FC();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v6 + OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_eventHandlerQueueFundsSpent) = result;
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v19 > -9.22337204e18)
  {
    if (v19 < 9.22337204e18)
    {
      sub_1C97F07FC();
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      *(v6 + OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_eventHandlerQueueFundsEarned) = v20;
      sub_1C97A2CEC(qword_1EC3CF370, &qword_1C9AC1380);
      v21 = swift_allocObject();
      *(v6 + OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_eventHandlerQueueStopped) = v21;
      *(v21 + 16) = 0;
      *(v6 + OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_unhealthyBufferCount) = 0;
      return v6;
    }

    goto LABEL_8;
  }

  __break(1u);
LABEL_8:
  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

void sub_1C99A9F14(uint64_t a1, unint64_t a2, uint64_t *a3, const char *a4)
{
  if (qword_1EC3C5520 != -1)
  {
    sub_1C97DAA64(&qword_1EC3C5520);
  }

  v8 = sub_1C9A91B58();
  sub_1C9887EC4(v8, qword_1EC3D3108);

  oslog = sub_1C9A91B38();
  v9 = sub_1C9A92FC8();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = sub_1C99AD0A4();
    v11 = swift_slowAlloc();
    v12 = sub_1C99AD0A4();
    v24 = v12;
    *v10 = 136446722;
    *(v10 + 4) = sub_1C9849140(a1, a2, &v24);
    *(v10 + 12) = 2114;
    v13 = *a3;
    v14 = a3[2];
    v15 = objc_opt_self();
    v21 = v13;
    v22 = a3[1];
    v23 = v14;
    v16 = [v15 valueWithCMTime_];
    *(v10 + 14) = v16;
    *v11 = v16;
    *(v10 + 22) = 2114;
    v21 = sub_1C9A92F08();
    v22 = v17;
    v23 = v18;
    v19 = [v15 valueWithCMTime_];
    *(v10 + 24) = v19;
    v11[1] = v19;
    _os_log_impl(&dword_1C9788000, oslog, v9, a4, v10, 0x20u);
    sub_1C97A2CEC(&unk_1EC3C86A0, &qword_1C9A9F830);
    swift_arrayDestroy();
    sub_1C9840CEC();
    sub_1C97A592C(v12);
    sub_1C9840CEC();
    sub_1C9840CEC();
  }

  else
  {
  }
}

void sub_1C99AA138(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9)
{
  if (qword_1EC3C5520 != -1)
  {
    sub_1C97DAA64(&qword_1EC3C5520);
  }

  v16 = sub_1C9A91B58();
  sub_1C9887EC4(v16, qword_1EC3D3108);

  oslog = sub_1C9A91B38();
  v17 = sub_1C9A92FC8();

  if (os_log_type_enabled(oslog, v17))
  {
    v18 = sub_1C99AD0A4();
    v19 = swift_slowAlloc();
    v20 = sub_1C99AD0A4();
    v21 = a1;
    v22 = v20;
    v31 = v20;
    *v18 = 136446722;
    *(v18 + 4) = sub_1C9849140(v21, a2, &v31);
    *(v18 + 12) = 2114;
    v23 = objc_opt_self();
    v28 = a3;
    v29 = a4;
    v30 = a5;
    v24 = [v23 valueWithCMTime_];
    *(v18 + 14) = v24;
    *v19 = v24;
    *(v18 + 22) = 2114;
    v28 = a6;
    v29 = a7;
    v30 = a8;
    v25 = [v23 valueWithCMTime_];
    *(v18 + 24) = v25;
    v19[1] = v25;
    _os_log_impl(&dword_1C9788000, oslog, v17, a9, v18, 0x20u);
    sub_1C97A2CEC(&unk_1EC3C86A0, &qword_1C9A9F830);
    swift_arrayDestroy();
    sub_1C9840CEC();
    sub_1C97A592C(v22);
    sub_1C9840CEC();
    sub_1C9840CEC();
  }

  else
  {
  }
}

uint64_t sub_1C99AA37C(uint64_t a1, void *a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3CA8D0, &qword_1C9AA47B0);
  sub_1C97DACE4(v4);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  if (qword_1EC3C5520 != -1)
  {
    sub_1C97DAA64(&qword_1EC3C5520);
  }

  v6 = sub_1C9A91B58();
  sub_1C9887EC4(v6, qword_1EC3D3108);
  v7 = a2;
  v8 = sub_1C9A91B38();
  v9 = sub_1C9A92FA8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = sub_1C99AD014();
    *v10 = 134349314;
    *(v10 + 4) = a1;
    *(v10 + 12) = 2112;
    v12 = a2;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1C9788000, v8, v9, "%{public}ld consecutive audio heartbeats detected unhealthy buffers. Error: %@.", v10, 0x16u);
    sub_1C97AE434(v11, &unk_1EC3C86A0, &qword_1C9A9F830);
    sub_1C9840CEC();
    sub_1C9840CEC();
  }

  v14 = sub_1C9A92988();
  sub_1C98B1074(v14);
  sub_1C97AA878();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  sub_1C99AD06C();
}

uint64_t sub_1C99AA554()
{
  sub_1C97AA95C();
  v1 = [objc_opt_self() processInfo];
  v2 = [v1 processName];

  sub_1C9A924A8();
  sub_1C99ACF08();
  v0[5] = v3;
  v0[6] = 0x65746E6F43646142;
  sub_1C99ACFC4(v4, 0xEA0000000000746ELL);
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v10 = sub_1C99ACFA4(v5);

  return sub_1C987A75C(v6, v7, v8, v9, v10);
}

uint64_t sub_1C99AA65C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v2 = *v1;
  sub_1C97AA83C();
  *v3 = v2;
  *(v4 + 216) = v0;

  if (v0)
  {
    v5 = sub_1C99AA7B8;
  }

  else
  {
    v5 = sub_1C99AA760;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C99AA760()
{
  sub_1C97AA884();
  sub_1C987B04C(v0 + 16);
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C99AA7B8()
{
  sub_1C987B04C(v0 + 16);
  if (qword_1EC3C5520 != -1)
  {
    sub_1C97DAA64(&qword_1EC3C5520);
  }

  v1 = *(v0 + 216);
  v2 = sub_1C9A91B58();
  sub_1C9887EC4(v2, qword_1EC3D3108);
  v3 = v1;
  v4 = sub_1C9A91B38();
  v5 = sub_1C9A92FA8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 216);
  if (v6)
  {
    v8 = sub_1C99AD08C();
    v9 = sub_1C99AD014();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    sub_1C99AD04C();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    sub_1C97AE434(v9, &unk_1EC3C86A0, &qword_1C9A9F830);
    sub_1C9840CEC();
    sub_1C99ACF88();
  }

  else
  {
  }

  sub_1C97DA91C();

  return v17();
}

uint64_t sub_1C99AA924(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C97A2CEC(&qword_1EC3CA8D0, &qword_1C9AA47B0);
  sub_1C97DACE4(v5);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C9831528();
  v8 = *(*(v7 + 136))();
  v9 = *(*(*a3 + 136))();
  if (qword_1EC3C5520 != -1)
  {
    sub_1C97DAA64(&qword_1EC3C5520);
  }

  v10 = sub_1C9A91B58();
  sub_1C9887EC4(v10, qword_1EC3D3108);
  v11 = a1;
  v12 = sub_1C9A91B38();
  v13 = sub_1C9A92FA8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134218496;
    *(v14 + 4) = v8;
    *(v14 + 12) = 2048;
    *(v14 + 14) = v9;
    *(v14 + 22) = 1024;
    *(v14 + 24) = [v11 frameLength];

    sub_1C99AD04C();
    _os_log_impl(v15, v16, v17, v18, v19, 0x1Cu);
    sub_1C99ACF88();
  }

  else
  {

    v12 = v11;
  }

  v20 = sub_1C9A92988();
  sub_1C98B1074(v20);
  sub_1C97AA878();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  sub_1C99AD06C();
}

uint64_t sub_1C99AAB30()
{
  sub_1C97AA95C();
  v1 = [objc_opt_self() processInfo];
  v2 = [v1 processName];

  sub_1C9A924A8();
  sub_1C99ACF08();
  v0[5] = v3;
  v0[6] = 0x776F6C667265764FLL;
  sub_1C99ACFC4(v4, 0xE800000000000000);
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v10 = sub_1C99ACFA4(v5);

  return sub_1C987A75C(v6, v7, v8, v9, v10);
}

uint64_t sub_1C99AAC34()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v2 = *v1;
  sub_1C97AA83C();
  *v3 = v2;
  *(v4 + 216) = v0;

  if (v0)
  {
    v5 = sub_1C99AAD38;
  }

  else
  {
    v5 = sub_1C99ACEE4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C99AAD38()
{
  sub_1C987B04C(v0 + 16);
  if (qword_1EC3C5520 != -1)
  {
    sub_1C97DAA64(&qword_1EC3C5520);
  }

  v1 = *(v0 + 216);
  v2 = sub_1C9A91B58();
  sub_1C9887EC4(v2, qword_1EC3D3108);
  v3 = v1;
  v4 = sub_1C9A91B38();
  v5 = sub_1C9A92FA8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 216);
  if (v6)
  {
    v8 = sub_1C99AD08C();
    v9 = sub_1C99AD014();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    sub_1C99AD04C();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    sub_1C97AE434(v9, &unk_1EC3C86A0, &qword_1C9A9F830);
    sub_1C9840CEC();
    sub_1C99ACF88();
  }

  else
  {
  }

  sub_1C97DA91C();

  return v17();
}

void sub_1C99AAEA4()
{
  sub_1C97BE460();
  v1 = sub_1C9A92128();
  sub_1C97AE9C8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97AEAD8();
  v7 = v6 - v5;
  v8 = sub_1C9A92158();
  sub_1C97AE9C8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C97AEAD8();
  v14 = v13 - v12;
  sub_1C9831528();
  v16 = *(v15 + 136);
  if ((*v16() & 1) == 0)
  {
    v17 = v16();
    v18 = 0;
    atomic_compare_exchange_strong_explicit(v17, &v18, 1u, memory_order_relaxed, memory_order_relaxed);
    if (!v18)
    {
      v20 = *(v0 + OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_interruptionHandler);
      v19 = *(v0 + OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_interruptionHandler + 8);
      sub_1C97AA878();
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      *(v21 + 24) = v19;
      v26[4] = sub_1C97EFF90;
      v26[5] = v21;
      sub_1C994A090();
      sub_1C97F083C(COERCE_DOUBLE(1107296256));
      v26[2] = v22;
      v26[3] = &unk_1F4946F80;
      v23 = _Block_copy(v26);

      sub_1C9A92148();
      sub_1C99ACEF0();
      sub_1C99ACACC(v24, v25, MEMORY[0x1E69E7F70]);
      sub_1C97A2CEC(&unk_1EC3C8660, &qword_1C9A9FF20);
      sub_1C99AC8F8();
      sub_1C9A93428();
      MEMORY[0x1CCA90CE0](0, v14, v7, v23);
      _Block_release(v23);
      (*(v3 + 8))(v7, v1);
      (*(v10 + 8))(v14, v8);
    }
  }

  sub_1C97BE478();
}

void sub_1C99AB13C(uint64_t a1, void *a2)
{
  sub_1C99AA37C(*(v2 + OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_unhealthyBufferCount), a2);

  sub_1C99AAEA4();
}

void sub_1C99AB170(void *a1)
{
  sub_1C99AA924(a1, *(v1 + OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_eventHandlerQueueFundsSpent), *(v1 + OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_eventHandlerQueueFundsEarned));

  sub_1C99AAEA4();
}

void sub_1C99AB1B0(void *a1)
{
  v3 = OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_unhealthyBufferCount;
  sub_1C9996C30(a1);
  sub_1C9996D74(a1);
  sub_1C9996E90(a1);
  *(v1 + v3) = 0;
}

uint64_t sub_1C99AB274(void *a1, void *a2, void *a3, double a4, const char *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v6;
  v10 = v6 + *a3;
  v11 = *v10;
  v12 = *(v10 + 2);
  v13 = *(v10 + 3);
  v14 = *(v10 + 2);
  v50 = *v6;
  type metadata accessor for SNTimeUtils(a4);

  v51 = a1;
  v15 = sub_1C97CC704(a2);
  v17 = v16;
  v19 = v18;
  v20 = HIDWORD(v16);
  CMTimeMakeWithSeconds(&time1, 10.0, 1000);
  time1.value = v11;
  time1.timescale = v12;
  time1.flags = v13;
  time1.epoch = v14;
  time2.value = v15;
  time2.timescale = v17;
  time2.flags = v20;
  time2.epoch = v19;
  if (CMTimeCompare(&time1, &time2) < 1 || (sub_1C99AD02C(), sub_1C99AB4D4(v21, v22, v23, v24, v25, v26, v7, v50, a5), (sub_1C9A93178() & 1) != 0))
  {

    v47 = v51;
    sub_1C99AD02C();
    v40 = a6(v28, v29, v30, v31, v32, v33);
    v42 = v41;
    v44 = v43;

    v46 = HIDWORD(v42);
  }

  else
  {
    type metadata accessor for SNError(v27);
    sub_1C99AD040();
    v39 = sub_1C9929478(v34, v35, v36, v37, 0xD000000000000012, v38);
    swift_willThrow();

    v40 = *MEMORY[0x1E6960C70];
    LODWORD(v42) = *(MEMORY[0x1E6960C70] + 8);
    LODWORD(v46) = *(MEMORY[0x1E6960C70] + 12);
    v44 = *(MEMORY[0x1E6960C70] + 16);
  }

  *v10 = v40;
  *(v10 + 2) = v42;
  *(v10 + 3) = v46;
  *(v10 + 2) = v44;
  return result;
}

uint64_t sub_1C99AB4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9)
{
  sub_1C9A91748();
  sub_1C99ACF70();
  sub_1C99ACACC(v15, v16, MEMORY[0x1E69695E0]);
  v17 = sub_1C9A93A98();
  sub_1C99AA138(v17, v18, a1, a2, a3, a4, a5, a6, a9);

  return a4;
}

void sub_1C99AB5C4(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, const char *a5, ...)
{
  sub_1C9A91748();
  sub_1C99ACF70();
  sub_1C99ACACC(v8, v9, MEMORY[0x1E69695E0]);
  v10 = sub_1C9A93A98();
  sub_1C99A9F14(v10, v11, a1, a5);

  sub_1C99AB1B0(a3);
}

void sub_1C99AB66C(OpaqueAudioQueue *a1, AudioQueueBuffer *a2, uint64_t a3)
{
  v7 = objc_autoreleasePoolPush();
  sub_1C99AB6E0(v3, a2, a3, a1);

  objc_autoreleasePoolPop(v7);
}

void sub_1C99AB6E0(uint64_t a1, AudioQueueBuffer *a2, uint64_t a3, OpaqueAudioQueue *a4)
{
  if ((*(*(**(a1 + OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_eventHandlerQueueStopped) + 136))() & 1) == 0)
  {
    mAudioDataByteSize = a2->mAudioDataByteSize;
    if (mAudioDataByteSize)
    {
      v9 = *(a1 + OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_recordFormat);
      v10 = *([v9 streamDescription] + 6);
      if (v10)
      {
        v11 = [objc_allocWithZone(MEMORY[0x1E6958440]) initWithPCMFormat:v9 frameCapacity:mAudioDataByteSize / v10];
        if (v11)
        {
          v12 = v11;
          [v11 setFrameLength:[v11 frameCapacity]];
          v13 = [v12 mutableAudioBufferList];
          if (*v13 == 1)
          {
            memcpy(v13[2], a2->mAudioData, a2->mAudioDataByteSize);
            [v9 sampleRate];
            v15 = [objc_allocWithZone(MEMORY[0x1E69584A0]) initWithAudioTimeStamp:a3 sampleRate:v14];
            sub_1C99AB274(v12, v15, &OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_lastAudioHeartbeatTime, v16, "Audio Heartbeat Reanchor (%{public}s); time changed from %{public}@ to %{public}@", sub_1C97CCC50);
            sub_1C99ABA18(v12, v15);
            AudioQueueEnqueueBuffer(a4, a2, 0, 0);

            v12 = v15;
          }

          else
          {
            if (qword_1EC3C5520 != -1)
            {
              swift_once();
            }

            v20 = sub_1C9A91B58();
            sub_1C97BFF6C(v20, qword_1EC3D3108);
            v21 = sub_1C9A91B38();
            v22 = sub_1C9A92FA8();
            if (os_log_type_enabled(v21, v22))
            {
              v23 = swift_slowAlloc();
              *v23 = 0;
              _os_log_impl(&dword_1C9788000, v21, v22, "could not handle non-unary buffer count", v23, 2u);
              MEMORY[0x1CCA93280](v23, -1, -1);
            }
          }

LABEL_15:

          return;
        }

        if (qword_1EC3C5520 == -1)
        {
LABEL_8:
          v17 = sub_1C9A91B58();
          sub_1C97BFF6C(v17, qword_1EC3D3108);
          v12 = sub_1C9A91B38();
          v18 = sub_1C9A92FA8();
          if (os_log_type_enabled(v12, v18))
          {
            v19 = swift_slowAlloc();
            *v19 = 0;
            _os_log_impl(&dword_1C9788000, v12, v18, "could not allocate avaudiobuffer", v19, 2u);
            MEMORY[0x1CCA93280](v19, -1, -1);
          }

          goto LABEL_15;
        }
      }

      else
      {
        __break(1u);
      }

      swift_once();
      goto LABEL_8;
    }
  }
}

uint64_t sub_1C99ABA18(void *a1, void *a2)
{
  v6 = *(v2 + OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_bufferHandler);
  v5 = *(v2 + OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_bufferHandler + 8);
  sub_1C97F07FC();
  v7 = swift_allocObject();
  swift_weakInit();
  sub_1C98137F8();
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v5;
  v8[4] = a1;
  v8[5] = a2;
  v8[6] = v7;

  v9 = a1;
  v10 = a2;
  [v9 frameLength];
  sub_1C99ABBC8();
  v12 = v11;
  if ((v11 & 1) == 0)
  {
    sub_1C99AB170(v9);
  }

  return v12 & 1;
}

void sub_1C99ABB04(void (*a1)(void *, void *), uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = objc_autoreleasePoolPush();
  a1(a3, a4);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1C99AB274(a3, a4, &OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_lastProcessingHeartbeatTime, v9, "Audio Processed Reanchor (%{public}s); time changed from %{public}@ to %{public}@", sub_1C97CCC84);
  }

  objc_autoreleasePoolPop(v8);
}

void sub_1C99ABBC8()
{
  sub_1C97BE460();
  v1 = v0;
  v3 = v2;
  v42 = v4;
  v43 = v5;
  v6 = sub_1C9A92128();
  sub_1C97AE9C8();
  v46 = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97AEAD8();
  v11 = v10 - v9;
  v45 = sub_1C9A92158();
  v44 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45 - 8);
  sub_1C97AEAD8();
  v14 = v13 - v12;
  v15 = *(v0 + OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_eventHandlerQueueFundsSpent);
  v16 = *(v0 + OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_eventHandlerQueueFundsEarned);
  v17 = *(v1 + OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_eventHandlerQueueStopped);
  sub_1C9831528();
  v41 = v16;
  v19 = *(*(v18 + 136))();
  v20 = v14;
  v21 = &unk_1C9A9C000;
  if (*(*(*v17 + 136))())
  {
    goto LABEL_10;
  }

  v40 = v1;
  v22 = v11;
  if (!v3)
  {
    goto LABEL_9;
  }

  v23 = *(*v15 + 136);
  do
  {
    v24 = *v23();
    if (v19 - v24 >= v3)
    {
      v25 = v3;
    }

    else
    {
      v25 = 0;
    }

    v26 = v25 + v24;
    v27 = v23();
    v28 = v24;
    atomic_compare_exchange_strong_explicit(v27, &v28, v26, memory_order_relaxed, memory_order_relaxed);
  }

  while (v28 != v24);
  v22 = v11;
  if (v19 - v24 >= v3)
  {
LABEL_9:
    sub_1C98137F8();
    v29 = swift_allocObject();
    v29[2] = v17;
    v29[3] = v42;
    v29[4] = v43;
    v29[5] = v41;
    v29[6] = v3;
    v50 = sub_1C99ACA9C;
    v51 = v29;
    sub_1C994A090();
    v21 = &unk_1C9A9C000;
    sub_1C97F083C(COERCE_DOUBLE(1107296256));
    v48 = v30;
    v49 = &unk_1F4947110;
    v31 = _Block_copy(v47);

    sub_1C9A92148();
    sub_1C99ACEF0();
    sub_1C99ACACC(v32, v33, MEMORY[0x1E69E7F70]);
    sub_1C97A2CEC(&unk_1EC3C8660, &qword_1C9A9FF20);
    sub_1C99AC8F8();
    sub_1C9A93428();
    MEMORY[0x1CCA90CE0](0, v20, v22, v31);
    _Block_release(v31);
    (*(v46 + 8))(v22, v6);
    (*(v44 + 8))(v20, v45);

    v11 = v22;
    v1 = v40;
LABEL_10:
    sub_1C97F07FC();
    v34 = swift_allocObject();
    *(v34 + 16) = v1;
    sub_1C97AA878();
    v35 = swift_allocObject();
    *(v35 + 16) = sub_1C99ACA94;
    *(v35 + 24) = v34;
    v50 = sub_1C97F075C;
    v51 = v35;
    sub_1C994A090();
    sub_1C97F083C(v21[309]);
    v48 = v36;
    v49 = &unk_1F49470C0;
    v37 = _Block_copy(v47);

    swift_retain_n();
    sub_1C9A92148();
    sub_1C99ACEF0();
    sub_1C99ACACC(v38, v39, MEMORY[0x1E69E7F70]);
    sub_1C97A2CEC(&unk_1EC3C8660, &qword_1C9A9FF20);
    sub_1C99AC8F8();
    sub_1C9A93428();
    MEMORY[0x1CCA90CE0](0, v20, v11, v37);
    _Block_release(v37);

    (*(v46 + 8))(v11, v6);
    (*(v44 + 8))(v20, v45);
  }

  sub_1C97BE478();
}

void sub_1C99AC0D4(OpaqueAudioQueue *a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2 == 1634824814)
  {
    ioDataSize = 4;
    outData = 0;
    Property = AudioQueueGetProperty(a1, 0x6171726Eu, &outData, &ioDataSize);
    sub_1C9A3B558(Property);
    if (ioDataSize == 4)
    {
      if (!outData)
      {
        sub_1C99AAEA4();
      }
    }

    else
    {
      type metadata accessor for SNError(v3);
      sub_1C98573F8();
      v7 = sub_1C9820900(v5, v4 + 3, v6);
      swift_willThrow();
      if (qword_1EC3C5520 != -1)
      {
        sub_1C97DAA64(&qword_1EC3C5520);
      }

      v8 = sub_1C9A91B58();
      sub_1C9887EC4(v8, qword_1EC3D3108);
      v9 = v7;
      v10 = sub_1C9A91B38();
      v11 = sub_1C9A92FA8();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = sub_1C99AD08C();
        v13 = sub_1C99AD014();
        *v12 = 138412290;
        v14 = v7;
        v15 = _swift_stdlib_bridgeErrorToNSError();
        *(v12 + 4) = v15;
        *v13 = v15;
        _os_log_impl(&dword_1C9788000, v10, v11, "error checking running status %@", v12, 0xCu);
        sub_1C97AE434(v13, &unk_1EC3C86A0, &qword_1C9A9F830);
        sub_1C99ACF88();
        sub_1C9840CEC();
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1C99AC2C0(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 16))
  {
    swift_beginAccess();
    *(a1 + 16) = 0;
  }

  return result;
}

uint64_t sub_1C99AC324()
{
  v1 = OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_id;
  sub_1C9A91748();
  sub_1C97AEB3C();
  (*(v2 + 8))(v0 + v1);

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1C99AC408()
{
  sub_1C99AC324();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SNAudioRecordingQueueScheduler(uint64_t a1)
{
  result = qword_1EC3CF358;
  if (!qword_1EC3CF358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C99AC4B4(uint64_t a1)
{
  result = sub_1C9A91748();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1C99AC594(uint64_t result, OpaqueAudioQueue *a2, AudioQueueBuffer *a3, uint64_t a4)
{
  if (result)
  {

    sub_1C99AB66C(a2, a3, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C99AC5F8(uint64_t result, OpaqueAudioQueue *a2, int a3)
{
  if (result)
  {

    sub_1C99AC0D4(a2, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C99AC654(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 104) = 0;
  *(v10 + 112) = 0;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  *(v10 + 56) = a6;
  *(v10 + 64) = a7;
  *(v10 + 72) = a8;
  *(v10 + 80) = a9;
  *(v10 + 88) = a10;
  *(v10 + 96) = 0;
  sub_1C99AD040();
  swift_beginAccess();
  *(v10 + 112) = 0;
  *(v10 + 104) = 0;
  return v10;
}

id *sub_1C99AC6C0()
{
  sub_1C99AC714();

  return v0;
}

void sub_1C99AC714()
{
  if (*(v0 + 96) == 1)
  {
    v1 = v0;
    sub_1C99AD040();
    swift_beginAccess();
    v2 = *(v0 + 104);
    if (v2)
    {
      v3 = *(v0 + 112);
      if (v3)
      {
        sub_1C9831528();
        v5 = *(v4 + 136);

        *v5(v6) = 1;
        v7 = sub_1C99ACF50();
        AudioQueueRemovePropertyListener(v7, v8, v9, v3);
      }

      if (qword_1EC3C5520 != -1)
      {
        sub_1C97DAA64(&qword_1EC3C5520);
      }

      v10 = sub_1C9A91B58();
      sub_1C9887EC4(v10, qword_1EC3D3108);
      v11 = sub_1C9A91B38();
      v12 = sub_1C9A92FC8();
      if (os_log_type_enabled(v11, v12))
      {
        *swift_slowAlloc() = 0;
        sub_1C99AD04C();
        _os_log_impl(v13, v14, v15, v16, v17, 2u);
        sub_1C99ACF88();
      }

      AudioQueueStop(v2, 1u);
      AudioQueueDispose(v2, 1u);
    }

    *(v1 + 104) = 0;
    *(v1 + 112) = 0;

    *(v1 + 96) = 0;
  }
}

uint64_t sub_1C99AC880()
{
  sub_1C99AC6C0();

  return swift_deallocClassInstance();
}

uint64_t sub_1C99AC8E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C99AC8F8()
{
  result = qword_1EC3C7AE0;
  if (!qword_1EC3C7AE0)
  {
    sub_1C97AA4F0(&unk_1EC3C8660, &qword_1C9A9FF20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7AE0);
  }

  return result;
}

uint64_t sub_1C99AC974()
{
  sub_1C97AA95C();
  sub_1C982F948();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97DA5D0;
  sub_1C97AA934();

  return sub_1C99AAB14();
}

uint64_t sub_1C99ACA04()
{
  sub_1C97AA95C();
  sub_1C982F948();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C98E01EC(v1);

  return v4(v3);
}

uint64_t sub_1C99ACACC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C99ACB14()
{
  sub_1C97AA95C();
  sub_1C982F948();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97D9C3C;
  sub_1C97AA934();

  return sub_1C99AA538();
}

uint64_t sub_1C99ACBA4(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1C99ACC98;

  return v5(v2 + 16);
}

uint64_t sub_1C99ACC98()
{
  sub_1C97AA95C();
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;
  sub_1C97AA83C();
  *v4 = v3;

  *v2 = *(v1 + 16);
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1C99ACDBC()
{
  sub_1C97AA95C();
  sub_1C982F948();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C98E01EC(v1);

  return v4(v3);
}

uint64_t sub_1C99ACE4C()
{
  sub_1C97AA95C();
  sub_1C982F948();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C98E01EC(v1);

  return v4(v3);
}

void sub_1C99ACF08()
{
  strcpy((v0 + 16), "SoundAnalysis");
  *(v0 + 30) = -4864;
  *(v0 + 32) = 0x6E6964726F636552;
}

void sub_1C99ACF88()
{

  JUMPOUT(0x1CCA93280);
}

void *sub_1C99ACFC4@<X0>(const void *a1@<X1>, uint64_t a2@<X8>)
{
  v4[7] = a2;
  v4[8] = 0;
  v4[9] = 0xE000000000000000;
  v4[10] = v2;
  v4[12] = 0;
  v4[13] = 0;
  v4[11] = v3;

  return memcpy(v4 + 14, a1, 0x60uLL);
}

uint64_t sub_1C99ACFF0@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_1C9921854(v2, &a2 - a1);
}

uint64_t sub_1C99AD014()
{

  return swift_slowAlloc();
}

void sub_1C99AD058(uint64_t a1@<X8>)
{
  v6 = v5 + v4;
  *v6 = v1;
  *(v6 + 8) = v2;
  *(v6 + 12) = v3;
  *(v6 + 16) = a1;
}

void sub_1C99AD06C()
{

  sub_1C99A9128();
}

uint64_t sub_1C99AD08C()
{

  return swift_slowAlloc();
}

uint64_t sub_1C99AD0A4()
{

  return swift_slowAlloc();
}

uint64_t sub_1C99AD0BC(uint64_t a1)
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

uint64_t sub_1C99AD160@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_1C97AEB3C();
  (*(v8 + 32))(a4);
  v10 = type metadata accessor for TimestampedValue(0, a2, a3, v9);
  v11 = *(*(a3 - 8) + 32);
  v12 = a4 + *(v10 + 36);

  return v11(v12, a1, a3);
}

uint64_t sub_1C99AD214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v95 = a3;
  v96 = a4;
  v90 = a1;
  sub_1C97AE9DC();
  v88 = v6;
  v89 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v86 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v93 = *(v10 + 32);
  v12 = v93;
  swift_getAssociatedTypeWitness();
  v99 = v11;
  v102 = v12;
  *&v98 = a2 + 56;
  *&v97 = a2 + 72;
  v78 = *(a2 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v79 = AssociatedTypeWitness;
  v14 = swift_getAssociatedTypeWitness();
  v100 = AssociatedTypeWitness;
  v101 = v14;
  v80 = type metadata accessor for StatefulTryMap(0, &v99);
  sub_1C97AE9DC();
  v82 = v15;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v16);
  v77 = &v71 - v17;
  v18 = *(a2 + 24);
  sub_1C97AE9DC();
  v87 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v94 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = *(a2 + 40);
  v22 = v72;
  v23 = swift_getAssociatedTypeWitness();
  v83 = type metadata accessor for TimestampedValue(255, v23, v14, v24);
  v99 = v18;
  v100 = v83;
  v101 = v14;
  v102 = v22;
  v84 = type metadata accessor for StatefulTryMap(0, &v99);
  sub_1C97AE9DC();
  v85 = v25;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v26);
  v81 = &v71 - v27;
  sub_1C97AEB3C();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v71 - v29;
  type metadata accessor for Locked(0, v14, v31, v32);
  v76 = a2;
  v33 = *(a2 + 64);
  v92 = v14;
  sub_1C9A937C8();
  v34 = sub_1C99AD90C(v30);
  v35 = v4;
  v36 = (v4 + *(a2 + 88));
  v38 = *v36;
  v37 = v36[1];
  v75 = v38;
  v74 = v37;
  v39 = swift_allocObject();
  *(v39 + 16) = v11;
  *(v39 + 24) = v18;
  v73 = v18;
  v41 = v95;
  v40 = v96;
  v42 = v93;
  *(v39 + 32) = v95;
  *(v39 + 40) = v42;
  v43 = v72;
  *(v39 + 48) = v72;
  *(v39 + 56) = v40;
  *&v44 = v78;
  *(&v44 + 1) = *v98;
  *&v45 = v33;
  *(&v45 + 1) = *v97;
  v97 = v45;
  v98 = v44;
  *(v39 + 64) = v44;
  *(v39 + 80) = v45;
  *(v39 + 96) = v34;
  v91 = v34;
  v46 = swift_allocObject();
  *(v46 + 16) = v11;
  *(v46 + 24) = v18;
  *(v46 + 32) = v41;
  *(v46 + 40) = v42;
  *(v46 + 48) = v43;
  *(v46 + 56) = v40;
  v47 = v97;
  *(v46 + 64) = v98;
  *(v46 + 80) = v47;
  v48 = v77;
  v49 = v42;
  sub_1C99C6814(sub_1C99AF07C, v39, sub_1C99AF0BC, v46, v11, v79, v92, v42, v77);

  v79 = &unk_1C9AC4ED0;
  v50 = v80;
  swift_getWitnessTable();
  v51 = sub_1C9A91F28();
  (*(v82 + 8))(v48, v50);
  v75(v51);

  v52 = v88;
  v53 = v86;
  v54 = v76;
  (*(v88 + 16))(v86, v35, v76);
  v55 = v52;
  v56 = (*(v52 + 80) + 104) & ~*(v52 + 80);
  v57 = swift_allocObject();
  v58 = v11;
  v59 = v73;
  *(v57 + 16) = v11;
  *(v57 + 24) = v59;
  v60 = v95;
  *(v57 + 32) = v95;
  *(v57 + 40) = v49;
  v61 = v96;
  *(v57 + 48) = v43;
  *(v57 + 56) = v61;
  v62 = v97;
  *(v57 + 64) = v98;
  *(v57 + 80) = v62;
  *(v57 + 96) = v91;
  (*(v55 + 32))(v57 + v56, v53, v54);
  v63 = swift_allocObject();
  *(v63 + 16) = v58;
  *(v63 + 24) = v59;
  v64 = v92;
  v65 = v93;
  *(v63 + 32) = v60;
  *(v63 + 40) = v65;
  *(v63 + 48) = v43;
  *(v63 + 56) = v61;
  v66 = v97;
  *(v63 + 64) = v98;
  *(v63 + 80) = v66;
  v67 = v81;
  v68 = v94;
  sub_1C99C6814(sub_1C99AF0D4, v57, sub_1C99AF3A8, v63, v59, v83, v64, v43, v81);

  (*(v87 + 8))(v68, v59);
  v69 = v84;
  swift_getWitnessTable();
  sub_1C9A920B8();

  return (*(v85 + 8))(v67, v69);
}

uint64_t sub_1C99AD90C(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1C99AE634(a1, v3);
  return v2;
}

uint64_t sub_1C99AD94C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v51 = a6;
  v58 = a11;
  v64 = a8;
  v65 = a1;
  v13 = *a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = swift_getAssociatedTypeWitness();
  v55 = *(v14 - 8);
  v56 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v54 = &v44 - v15;
  v16 = *(v13 + 80);
  v17 = sub_1C9A93258();
  v48 = *(v17 - 8);
  v49 = v17;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v57 = &v44 - v19;
  v20 = *(v16 - 8);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v47 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v45 = &v44 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v44 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v44 - v28;
  v50 = a3;
  sub_1C99AE444(v27);
  v59 = a10;
  v60 = a2;
  v30 = *(a10 + 8);
  sub_1C9A93798();
  v46 = v20;
  v31 = *(v20 + 8);
  v31(v27, v16);
  v32 = v64;
  v52 = *(v64 + 32);
  AssociatedTypeWitness = swift_checkMetadataState();
  v33 = v32;
  v34 = v52;
  v52(AssociatedTypeWitness, v33);
  v53 = v30;
  LOBYTE(v13) = sub_1C9A92438();
  v61 = v20 + 8;
  v62 = v31;
  v31(v27, v16);
  if ((v13 & 1) == 0)
  {
    v35 = v45;
    v34(AssociatedTypeWitness, v64);
    sub_1C9A937A8();
    v62(v35, v16);
    sub_1C99AE4F0(v27);
  }

  v36 = *(v64 + 24);
  v37 = v54;
  v36(AssociatedTypeWitness);
  v38 = v56;
  v39 = sub_1C9A92C08();
  (*(v55 + 8))(v37, v38);
  v66 = v39;
  sub_1C99AF1FC();
  v40 = v57;
  sub_1C9A92BA8();
  if (sub_1C97ABF20(v40, 1, v16) == 1)
  {
    (*(v48 + 8))(v40, v49);
    sub_1C99AF250();
    swift_allocError();
    swift_willThrow();
    return (v62)(v29, v16);
  }

  else
  {
    v42 = v47;
    (*(v46 + 32))(v47, v40, v16);
    sub_1C9A937B8();
    (v36)(AssociatedTypeWitness, v64);
    v43 = v62;
    v62(v42, v16);
    return v43(v29, v16);
  }
}

uint64_t sub_1C99ADE6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v44 = a6;
  v55 = a7;
  v56 = a8;
  v53 = a4;
  v54 = a5;
  v57 = a2;
  v46 = a1;
  v48 = a9;
  v50 = a13;
  v51 = a12;
  v49 = a15;
  v15 = *(*a3 + 80);
  v52 = a11;
  v45 = a10;
  v16 = sub_1C9A93258();
  v42 = *(v16 - 8);
  v43 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v47 = v39 - v18;
  v19 = *(v15 - 8);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v41 = v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = v39 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = v39 - v25;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v30 = v46;
  (*(v29 + 16))(v39 - v28, v46, AssociatedTypeWitness);
  sub_1C99AE444(v24);
  v39[1] = *(a14 + 8);
  sub_1C9A93798();
  v40 = v19;
  v31 = v24;
  v32 = v48;
  v39[0] = *(v19 + 8);
  (v39[0])(v31, v15);
  sub_1C99AD160(v26, AssociatedTypeWitness, v15, v32);
  v33 = v30;
  v34 = v47;
  v58 = sub_1C99AE290(v53, v33, v54, v44, v55, v56, v45, v52, v51, v50, a14, v49);
  sub_1C99AF1FC();
  sub_1C9A92BA8();
  if (sub_1C97ABF20(v34, 1, v15) == 1)
  {
    (*(v42 + 8))(v34, v43);
    sub_1C99AF250();
    swift_allocError();
    swift_willThrow();
    v36 = type metadata accessor for TimestampedValue(0, AssociatedTypeWitness, v15, v35);
    return (*(*(v36 - 8) + 8))(v32, v36);
  }

  else
  {
    v38 = v41;
    (*(v40 + 32))(v41, v34, v15);
    sub_1C9A937B8();
    return (v39[0])(v38, v15);
  }
}

uint64_t sub_1C99AE290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18[0] = a3;
  v18[1] = a4;
  v18[2] = a6;
  v18[3] = a7;
  v18[4] = a9;
  v18[5] = a10;
  v18[6] = a11;
  v18[7] = a12;
  v12 = a1 + *(_s21CollectionTimestamperVMa(0, v18) + 84);
  v13 = *v12;
  if (!*(v12 + 16))
  {
    return v13;
  }

  if (*(v12 + 16) != 1)
  {
    swift_getAssociatedTypeWitness();
    return sub_1C9A92C08();
  }

  v14 = *(v12 + 8);
  swift_getAssociatedTypeWitness();
  result = sub_1C9A92C08();
  v16 = result * v14;
  if ((result * v14) >> 64 != (result * v14) >> 63)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (!v13)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v16 != 0x8000000000000000 || v13 != -1)
  {
    return v16 / v13;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1C99AE3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  return sub_1C9A937C8();
}

void sub_1C99AE444(uint64_t a1@<X8>)
{
  os_unfair_lock_lock(*(*(v1 + 16) + 16));
  sub_1C9831528();
  v4 = *(v3 + 96);
  swift_beginAccess();
  sub_1C97AEB3C();
  (*(v5 + 16))(a1, v1 + v4);
  sub_1C97969D4(v1);
}

uint64_t sub_1C99AE4F0(uint64_t a1)
{
  v2 = v1;
  sub_1C9831528();
  v5 = *(v4 + 80);
  sub_1C97AE9DC();
  v7 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  os_unfair_lock_lock(*(*(v2 + 2) + 16));
  (*(v7 + 16))(v10, a1, v5);
  v11 = *(*v2 + 96);
  swift_beginAccess();
  (*(v7 + 40))(&v2[v11], v10, v5);
  swift_endAccess();
  sub_1C97969D4(v2);
  return (*(v7 + 8))(a1, v5);
}

char *sub_1C99AE634(uint64_t a1, double a2)
{
  v4 = *v2;
  type metadata accessor for SafeLock(a2);
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *v6 = 0;
  *(v5 + 16) = v6;
  *(v2 + 2) = v5;
  sub_1C9831528();
  (*(*(*(v4 + 80) - 8) + 32))(&v2[*(v7 + 96)], a1);
  return v2;
}

char *sub_1C99AE6E8()
{
  v1 = *v0;

  sub_1C9831528();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v2 + 96)]);
  return v0;
}

uint64_t sub_1C99AE764()
{
  sub_1C99AE6E8();

  return swift_deallocClassInstance();
}

uint64_t sub_1C99AE7D4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return sub_1C97ABF20(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_1C99AE99C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          sub_1C97ACC50(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1C99AEC48(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v12 = 0;
    v15 = result;
    v4 = *(a1 + 72);
    v7 = result;
    v8 = *(a1 + 24);
    v9 = *(a1 + 40);
    v10 = *(a1 + 56);
    v11 = v4;
    result = _s21CollectionTimestamperV18TimestampingPolicyOMa(319, &v7);
    if (v5 <= 0x3F)
    {
      v13 = 0;
      v16 = result;
      result = sub_1C983DB24();
      if (v6 <= 0x3F)
      {
        v14 = 0;
        v17 = result;
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C99AED10(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 31) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_1C97ABF20(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C99AEE4C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 31] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_1C97ACC50(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 31) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 31) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C99AF04C(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1C99AF064(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1C99AF0D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = *(v3 + 32);
  v15 = *(v3 + 40);
  v7 = *(v3 + 56);
  v8 = *(v3 + 64);
  v10 = *(v3 + 72);
  v9 = *(v3 + 80);
  v11 = *(v3 + 88);
  v17[0] = *(v3 + 16);
  v14 = v17[0];
  v17[1] = v15;
  v18 = v8;
  v19 = v10;
  v20 = v9;
  v21 = v11;
  v12 = *(_s21CollectionTimestamperVMa(0, v17) - 8);
  return sub_1C99ADE6C(a1, a2, *(v3 + 96), v3 + ((*(v12 + 80) + 104) & ~*(v12 + 80)), v14, *(&v14 + 1), v16, v15, a3, *(&v15 + 1), v7, v8, v10, v9, v11);
}

unint64_t sub_1C99AF1FC()
{
  result = qword_1EC3CF3F8;
  if (!qword_1EC3CF3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF3F8);
  }

  return result;
}

unint64_t sub_1C99AF250()
{
  result = qword_1EC3CF400;
  if (!qword_1EC3CF400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF400);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TimestampingError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C99AF354()
{
  result = qword_1EC3CF408;
  if (!qword_1EC3CF408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF408);
  }

  return result;
}

id sub_1C99AF3C0(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1C97A2CEC(&qword_1EC3C7FE0, &unk_1C9AA1890);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23[-v6];
  v8 = sub_1C9A91558();
  sub_1C97AE9C8();
  v10 = v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v23[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v23[-v15];
  sub_1C97A2C7C(a1, v23);
  if (!v24)
  {
    sub_1C97F9D3C(v23, &unk_1EC3C5E60, qword_1C9A9AE10);
    sub_1C97ACC50(v7, 1, 1, v8);
    goto LABEL_6;
  }

  v17 = swift_dynamicCast();
  sub_1C97ACC50(v7, v17 ^ 1u, 1, v8);
  if (sub_1C97ABF20(v7, 1, v8) == 1)
  {
LABEL_6:
    sub_1C97F9D3C(v7, &qword_1EC3C7FE0, &unk_1C9AA1890);
    sub_1C99B0F94();
    swift_allocError();
    swift_willThrow();
    sub_1C97F9D3C(a1, &unk_1EC3C5E60, qword_1C9A9AE10);
    goto LABEL_7;
  }

  (*(v10 + 32))(v16, v7, v8);
  (*(v10 + 16))(v14, v16, v8);
  v18 = objc_allocWithZone(ObjectType);
  v19 = sub_1C99AF778(v14);
  if (!v1)
  {
    v2 = v19;
    sub_1C97F9D3C(a1, &unk_1EC3C5E60, qword_1C9A9AE10);
    (*(v10 + 8))(v16, v8);
    v22 = swift_getObjectType();
    sub_1C99B11E4(v22);
    return v2;
  }

  sub_1C97F9D3C(a1, &unk_1EC3C5E60, qword_1C9A9AE10);
  (*(v10 + 8))(v16, v8);
LABEL_7:
  v20 = swift_getObjectType();
  sub_1C99B11E4(v20);
  return v2;
}

id sub_1C99AF778(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v34 = sub_1C9A93008();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C97AEAD8();
  v3 = sub_1C9A92158();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1C97AEAD8();
  v4 = sub_1C9A93018();
  sub_1C97AE9C8();
  v33 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C97AEAD8();
  v9 = v8 - v7;
  v10 = sub_1C9A91558();
  sub_1C97AE9C8();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C97AEAD8();
  v16 = v15 - v14;
  (*(v12 + 16))(v15 - v14, a1, v10);
  v17 = objc_allocWithZone(MEMORY[0x1E6958408]);
  v18 = sub_1C99CA154(v16, 1, 0);
  if (v1)
  {
    type metadata accessor for SNError(v19);
    v20 = sub_1C9A913B8();
    sub_1C9A935B8();

    v37 = 0xD000000000000019;
    v38 = 0x80000001C9ADC780;
    sub_1C99B1098(&qword_1EC3C9830, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v21 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v21);

    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 5, v20, 0xD000000000000019, 0x80000001C9ADC780);

    swift_willThrow();

    v23 = *(v12 + 8);
    v22 = (v12 + 8);
    v23(a1, v10);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v31 = v12;
    v32 = a1;
    v24 = OBJC_IVAR____SNAudioFileAnalyzer_audioFile;
    *&v39[OBJC_IVAR____SNAudioFileAnalyzer_audioFile] = v18;
    v25 = [v18 processingFormat];
    sub_1C99CCED8(v25);

    v27 = v39;
    v28 = [*&v39[v24] processingFormat];
    v29 = [objc_allocWithZone(SNAudioStreamAnalyzer) initWithFormat_];

    *&v39[OBJC_IVAR____SNAudioFileAnalyzer_streamAnalyzer] = v29;
    v27[OBJC_IVAR____SNAudioFileAnalyzer_wasCancelled] = 0;
    sub_1C9921A0C(v30);
    (*(v33 + 104))(v9, *MEMORY[0x1E69E8098], v4);
    sub_1C9A92148();
    v37 = MEMORY[0x1E69E7CC0];
    sub_1C99B1098(&qword_1EC3C56C0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    sub_1C97A2CEC(&unk_1EC3CDC60, &unk_1C9AA0040);
    sub_1C97F0490(&qword_1EC3C56E0, &unk_1EC3CDC60, &unk_1C9AA0040);
    sub_1C9A93428();
    *&v27[OBJC_IVAR____SNAudioFileAnalyzer_queue] = sub_1C9A93048();
    v36.receiver = v27;
    v36.super_class = ObjectType;
    v22 = objc_msgSendSuper2(&v36, sel_init);
    (*(v31 + 8))(v32, v10);
  }

  return v22;
}

uint64_t sub_1C99AFCC0(int a1, _BYTE *a2, char *a3, uint64_t *a4)
{
  LODWORD(v6) = a1;
  v44 = *MEMORY[0x1E69E9840];
  v7 = *&a2[OBJC_IVAR____SNAudioFileAnalyzer_audioFile];
  v8 = [v7 processingFormat];
  v9 = [objc_allocWithZone(MEMORY[0x1E6958440]) initWithPCMFormat:v8 frameCapacity:0x2000];

  if (!v9)
  {
    goto LABEL_26;
  }

  v37 = OBJC_IVAR____SNAudioFileAnalyzer_wasCancelled;
  v38 = OBJC_IVAR____SNAudioFileAnalyzer_streamAnalyzer;
  while (1)
  {
    v10 = [v7 length];
    v11 = [v7 framePosition];
    v12 = v10 - v11;
    if (__OFSUB__(v10, v11))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_22;
    }

    if (HIDWORD(v12))
    {
      goto LABEL_23;
    }

    HIDWORD(v40) = v6;
    if (v12 >= v6)
    {
      LODWORD(v12) = v6;
    }

    v13 = v12 >= 0x2000 ? 0x2000 : v12;
    v43 = 0;
    v14 = v9;
    if (![v7 readIntoBuffer:v9 frameCount:v13 error:&v43])
    {
      break;
    }

    v15 = a3;
    v16 = *&a3[v38];
    v17 = *a4;
    v18 = v43;
    [v16 analyzeAudioBuffer:v14 atAudioFramePosition:v17];
    v19 = [v14 frameLength];
    if (__OFADD__(*a4, v19))
    {
      goto LABEL_24;
    }

    v9 = v14;
    *a4 += v19;
    v6 = (HIDWORD(v40) - v13);
    if (HIDWORD(v40) < v13)
    {
      goto LABEL_25;
    }

    v20 = [v7 length];
    if (v20 != [v7 framePosition])
    {
      a3 = v15;
      if ((a2[v37] & 1) == 0)
      {
        if (v6)
        {
          continue;
        }
      }
    }

    a3 = v9;
    goto LABEL_20;
  }

  v21 = v43;
  v22 = sub_1C9A913C8();

  swift_willThrow();
  type metadata accessor for SNError(v23);
  v24 = sub_1C9A913B8();
  v25 = sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 2, v24, 0xD00000000000001FLL, 0x80000001C9ADC760);

  v26 = sub_1C97EDFB0();
  v27 = v25;
  sub_1C97ED800(v27, v28, v29, v30, v31, v32, v33, v34, v36, v37, v38, a2, v40, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);

  v6 = v41;
LABEL_20:

  return v6;
}

void sub_1C99AFFB0(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____SNAudioFileAnalyzer_audioFile);
  v4 = [v3 fileFormat];
  [v4 sampleRate];
  v6 = v5;
  v7 = v5;

  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v6 <= -2147483650.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v6 < 2147483650.0)
  {
    v8 = sub_1C9A93168();
    v10 = v9;
    v12 = v11;
    v13 = HIDWORD(v9);
    [v3 length];
    v14 = sub_1C9A93168();
    *a1 = v8;
    *(a1 + 8) = v10;
    *(a1 + 12) = v13;
    *(a1 + 16) = v12;
    *(a1 + 24) = v14;
    *(a1 + 32) = v15;
    *(a1 + 36) = v16;
    *(a1 + 40) = v17;
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1C99B00BC(CMTimeValue *a1)
{
  v2 = v1;
  v4 = *&v2[OBJC_IVAR____SNAudioFileAnalyzer_audioFile];
  v5 = [v4 framePosition];
  if (v5 < [v4 length])
  {
    v6 = [v4 fileFormat];
    [v6 sampleRate];
    v8 = v7;
    v9 = v7;

    if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v8 > -2147483650.0)
    {
      if (v8 < 2147483650.0)
      {
        v10 = a1[1];
        v11 = a1[2];
        time.value = *a1;
        *&time.timescale = v10;
        time.epoch = v11;
        CMTimeConvertScale(&v20, &time, v8, kCMTimeRoundingMethod_RoundAwayFromZero);
        value = v20.value;
        time.value = sub_1C9A92F08();
        time.timescale = v13;
        time.flags = v14;
        time.epoch = v15;
        CMTimeConvertScale(&v20, &time, v8, kCMTimeRoundingMethod_RoundTowardZero);
        v16 = v20.value;
        [v4 setFramePosition_];
        time.value = [v4 framePosition];
        v17 = __OFSUB__(v16, value);
        v18 = v16 - value;
        if (!v17)
        {
          if ((v18 & 0x8000000000000000) == 0)
          {
            if (!HIDWORD(v18))
            {
              v19 = v2;
              sub_1C99AFCC0(v18, v19, v19, &time.value);
              [v4 setFramePosition_];
              [*&v19[OBJC_IVAR____SNAudioFileAnalyzer_streamAnalyzer] completeAnalysis];
              return;
            }

LABEL_15:
            __break(1u);
            return;
          }

LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_12;
  }
}

uint64_t sub_1C99B0390(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
    v5 = sub_1C99B1048;
  }

  else
  {
    v5 = nullsub_1;
    v4 = 0;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  sub_1C99B1038(a1, a2);
  sub_1C99B046C(sub_1C99B1000, v6);
}

uint64_t sub_1C99B046C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C9A92128();
  sub_1C97AE9C8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97AEAD8();
  v11 = v10 - v9;
  v22 = sub_1C9A92158();
  sub_1C97AE9C8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C97AEAD8();
  v17 = v16 - v15;
  v18 = swift_allocObject();
  v18[2] = v2;
  v18[3] = a1;
  v18[4] = a2;
  aBlock[4] = sub_1C99B1074;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C98E5C5C;
  aBlock[3] = &unk_1F4947598;
  v19 = _Block_copy(aBlock);
  v20 = v2;

  sub_1C9A92148();
  sub_1C99B1098(&unk_1EC3C7AD0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1C97A2CEC(&unk_1EC3C8660, &qword_1C9A9FF20);
  sub_1C97F0490(&qword_1EC3C7AE0, &unk_1EC3C8660, &qword_1C9A9FF20);
  sub_1C9A93428();
  MEMORY[0x1CCA90CE0](0, v17, v11, v19);
  _Block_release(v19);
  (*(v7 + 8))(v11, v5);
  (*(v13 + 8))(v17, v22);
}

uint64_t sub_1C99B07CC(uint64_t a1, uint64_t (*a2)(BOOL))
{
  sub_1C99AFFB0(v5);
  sub_1C99B00BC(v5);
  return a2((*(a1 + OBJC_IVAR____SNAudioFileAnalyzer_wasCancelled) & 1) == 0);
}

uint64_t sub_1C99B086C(uint64_t a1, uint64_t a2)
{
  sub_1C97A2C7C(a1, v13);
  if (!v14)
  {
    goto LABEL_7;
  }

  v3 = sub_1C97A2CEC(&qword_1EC3CB9D0, &qword_1C9A9FF28);
  if ((sub_1C99B1204(v3, v4, v5, v3, v6) & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_1C97A2C7C(a2, v13);
  if (!v14)
  {
    swift_unknownObjectRelease();
LABEL_7:
    sub_1C97F9D3C(v13, &unk_1EC3C5E60, qword_1C9A9AE10);
    goto LABEL_8;
  }

  v7 = sub_1C97A2CEC(&unk_1EC3CF440, &qword_1C9AA0038);
  if (sub_1C99B1204(v7, v8, v9, v7, v10))
  {
    sub_1C99B0994(v12, v12);
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
LABEL_8:
  sub_1C99B0F94();
  swift_allocError();
  return swift_willThrow();
}

id sub_1C99B0994(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = *(v2 + OBJC_IVAR____SNAudioFileAnalyzer_streamAnalyzer);
  v7[0] = 0;
  if ([v4 addRequest:a1 withObserver:a2 error:v7])
  {
    return v7[0];
  }

  v6 = v7[0];
  sub_1C9A913C8();

  return swift_willThrow();
}

uint64_t sub_1C99B0B80(uint64_t a1)
{
  sub_1C97A2C7C(a1, v4);
  if (!v5)
  {
    return sub_1C97F9D3C(v4, &unk_1EC3C5E60, qword_1C9A9AE10);
  }

  sub_1C97A2CEC(&qword_1EC3CB9D0, &qword_1C9A9FF28);
  result = swift_dynamicCast();
  if (result)
  {
    [*(v1 + OBJC_IVAR____SNAudioFileAnalyzer_streamAnalyzer) removeRequest_];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C99B0D94()
{
  v0 = sub_1C97EDFB0();
  v1 = sub_1C97EDD94();

  return v1;
}

id _SNAudioFileAnalyzer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _SNAudioFileAnalyzer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C99B0F94()
{
  result = qword_1EC3CF438;
  if (!qword_1EC3CF438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF438);
  }

  return result;
}

uint64_t sub_1C99B1000(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1C99B1038(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C99B1080(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C99B1098(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for _SNAudioFileAnalyzer.DomainError(_BYTE *result, int a2, int a3)
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