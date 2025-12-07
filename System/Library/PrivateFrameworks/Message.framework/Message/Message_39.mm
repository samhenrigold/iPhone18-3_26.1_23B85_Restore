uint64_t sub_1B0A62C04(uint64_t a1)
{
  v16 = a1;
  v4 = sub_1B041C1E8();
  static MessageIdentifier.min.getter(&type metadata for UID, v4);
  v14[0] = v14[1];
  v5 = sub_1B03948EC();
  BinaryInteger.init<A>(_:)(v14, MEMORY[0x1E69E6530], &type metadata for UID, v5, v4);
  if (a1 < v15)
  {
    static MessageIdentifier.min.getter(&type metadata for UID, v4);
    return v13;
  }

  else
  {
    static MessageIdentifier.max.getter(&type metadata for UID, v4);
    v11[0] = v11[1];
    BinaryInteger.init<A>(_:)(v11, MEMORY[0x1E69E6530], &type metadata for UID, v5, v4);
    if (v12 < a1)
    {
      static MessageIdentifier.max.getter(&type metadata for UID, v4);
      return v10;
    }

    else
    {
      v7 = a1;
      MessageIdentifier.init<A>(exactly:)(&v7, &type metadata for UID, MEMORY[0x1E69E6530], v4, v5, &v8);
      if ((v9 & 1) == 0)
      {
        return v8;
      }

      sub_1B0E465A8();
      __break(1u);
      return v3;
    }
  }
}

unint64_t sub_1B0A62E1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B0A6298C(*a1, a1[1]);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1B0A62E78(_DWORD *a1, uint64_t a2)
{
  v19 = 0;
  v18 = 0;
  v9 = *a1;
  v10 = a1[1];
  v19 = a1;
  v18 = a2;
  v16 = v9;
  v17 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3AD0, &qword_1B0EA3A70);
  sub_1B0A6315C();
  if (sub_1B0E45718() == 1)
  {
    v11 = v9;
    v8 = sub_1B03948EC();
    v2 = sub_1B041C1E8();
    BinaryInteger.init<A>(_:)(&v11, MEMORY[0x1E69E6530], &type metadata for UID, v8, v2);
    return sub_1B0E432B8();
  }

  else
  {
    v14 = v9;
    v5 = sub_1B03948EC();
    v6 = sub_1B041C1E8();
    v4 = MEMORY[0x1E69E6530];
    BinaryInteger.init<A>(_:)(&v14, MEMORY[0x1E69E6530], &type metadata for UID, v5, v6);
    v7 = v15;
    v12 = v10;
    BinaryInteger.init<A>(_:)(&v12, v4, &type metadata for UID, v5, v6);
    if (v13 < v7)
    {
      sub_1B0E465A8();
      __break(1u);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24B0, &qword_1B0E9CC68);
    sub_1B08C3104();
    return sub_1B0E432A8();
  }
}

unint64_t sub_1B0A630DC()
{
  v2 = qword_1EB6DECC8;
  if (!qword_1EB6DECC8)
  {
    sub_1B0E432D8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DECC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A6315C()
{
  v2 = qword_1EB6DB6F0;
  if (!qword_1EB6DB6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3AD0, &qword_1B0EA3A70);
    sub_1B0714E4C();
    sub_1B0A63204();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB6F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A63204()
{
  v2 = qword_1EB6DED60;
  if (!qword_1EB6DED60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DED60);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A6328C(char a1)
{
  switch(a1)
  {
    case 1:
      return 0;
    case 2:
      return 1;
    case 3:
      return 2;
    case 4:
      return 3;
    case 5:
      return 4;
    case 6:
      return 5;
    case 7:
      return 6;
    case 8:
      return 7;
    case 9:
      return 8;
    case 10:
      return 9;
    case 11:
      return 10;
    case 12:
      return 11;
    case 13:
      return 12;
    case 14:
      return 13;
    case 15:
      return 14;
    case 16:
      return 15;
    case 17:
      return 16;
    case 18:
      return 17;
    case 19:
      return 18;
    case 20:
      return 19;
    case 21:
      return 20;
    case 22:
      return 21;
    case 23:
      return 22;
  }

  return 23;
}

uint64_t sub_1B0A63650(char a1)
{
  switch(a1)
  {
    case 1:
      v2 = 2;
      break;
    case 2:
      v2 = 3;
      break;
    case 3:
      v2 = 4;
      break;
    case 4:
      v2 = 5;
      break;
    case 5:
      v2 = 6;
      break;
    case 6:
      v2 = 7;
      break;
    case 7:
      v2 = 8;
      break;
    case 8:
      v2 = 9;
      break;
    case 9:
      v2 = 10;
      break;
    case 10:
      v2 = 11;
      break;
    case 11:
      v2 = 12;
      break;
    case 12:
      v2 = 13;
      break;
    case 13:
      v2 = 14;
      break;
    case 14:
      v2 = 15;
      break;
    case 15:
      v2 = 16;
      break;
    case 16:
      v2 = 17;
      break;
    case 17:
      v2 = 18;
      break;
    case 18:
      v2 = 19;
      break;
    case 19:
      v2 = 20;
      break;
    case 20:
      v2 = 21;
      break;
    case 21:
      v2 = 22;
      break;
    case 22:
      v2 = 23;
      break;
    default:
      v2 = 1;
      break;
  }

  return v2;
}

BOOL sub_1B0A637B0(uint64_t *a1, uint64_t *a2)
{
  v26[3] = a1;
  v26[2] = a2;
  v14 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v13 = *a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v15 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v14, v13);

  if ((v15 & 1) == 0)
  {
    return 0;
  }

  v32 = *(a1 + 1);
  sub_1B070B280(&v32, v26);
  sub_1B070B280(&v32, &v25);
  v31 = *(a2 + 1);
  sub_1B070B280(&v31, &v24);
  sub_1B070B280(&v31, &v23);
  v21 = v32;
  v22 = v31;
  if (*(&v32 + 1))
  {
    sub_1B070B280(&v21, &v18);
    if (*(&v22 + 1))
    {
      v17 = v18;
      v16 = v22;
      v9 = MEMORY[0x1B2726DE0](v18, *(&v18 + 1), v22, *(&v22 + 1));
      sub_1B03B1198(&v16);
      sub_1B03B1198(&v17);
      sub_1B03B1198(&v21);
      v10 = v9;
      goto LABEL_8;
    }

    sub_1B03B1198(&v18);
    goto LABEL_10;
  }

  if (*(&v22 + 1))
  {
LABEL_10:
    sub_1B06FF6F0(&v21);
    v10 = 0;
    goto LABEL_8;
  }

  sub_1B03B1198(&v21);
  v10 = 1;
LABEL_8:
  sub_1B03B1198(&v31);
  sub_1B03B1198(&v32);
  if (v10)
  {
    v4 = a1[3];
    v7 = a1[4];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v5 = a2[3];
    v6 = a2[4];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v8 = sub_1B08D0C60(v4, v7, v5, v6);

    if (v8)
    {
      v30 = a1[5];
      v29 = a2[5];
      if (v30 == v29)
      {
        v28 = *(a1 + 48);
        v20 = v28;
        v27 = *(a2 + 48);
        v19 = v27;
        sub_1B0A63B40();
        return (sub_1B0E46AE8() & 1) != 0;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0A63AD4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

unint64_t sub_1B0A63B40()
{
  v2 = qword_1EB6E3BC0;
  if (!qword_1EB6E3BC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3BC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A63C8C@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B0A6328C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B0A63CBC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B0A63650(*v1);
  *a1 = result;
  return result;
}

BOOL sub_1B0A63CEC(const void *a1, const void *a2)
{
  memcpy(__dst, a1, 0x31uLL);
  memcpy(v5, a2, 0x31uLL);
  return sub_1B0A637B0(__dst, v5);
}

uint64_t sub_1B0A63DB8(char a1)
{
  sub_1B0A63B40();
  if (sub_1B0E46AE8())
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1B0E46AE8();
  }

  return v2 & 1;
}

id sub_1B0A63E80()
{
  sub_1B0A63F8C();
  if ((sub_1B0E46DB8() & 0x100000000) != 0)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  sub_1B0E44868();
  v4 = sub_1B0E44C88();
  v3 = v0;
  v1 = sub_1B0A63FF0();
  return sub_1B0A64348(v4, v3, v1);
}

unint64_t sub_1B0A63F8C()
{
  v2 = qword_1EB6E3BC8;
  if (!qword_1EB6E3BC8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6E3BC8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B0A63FF0()
{
  sub_1B0A63B40();
  if (sub_1B0E46AE8())
  {
    CGSizeMake();
    v18 = v0;
    v19 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3BD0, &qword_1B0EA3DF8);
    sub_1B0E46A48();
    v23 = v2;
    *v2 = sub_1B0A64398();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C88, &unk_1B0EA3630);
    sub_1B0E46A48();
    v21 = v3;
    *v3 = sub_1B0E44838();
    v21[1] = v4;
    v16 = *(v24 + 24);
    v17 = *(v24 + 32);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v5 = sub_1B0A6A7C8(v16, v17);
    v21[5] = MEMORY[0x1E69E6158];
    v21[2] = v5;
    v21[3] = v6;
    v21[6] = sub_1B0E44838();
    v21[7] = v7;
    v20 = sub_1B07F1764();
    v8 = sub_1B0A64420(v18, v19);
    v21[11] = v20;
    v21[8] = v8;
    sub_1B0394964();
    v22 = sub_1B0E445D8();
    v23[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C90, &qword_1B0EA02B8);
    v23[1] = v22;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3BD0, &qword_1B0EA3DF8);
    sub_1B0E46A48();
    v15 = v9;
    *v9 = sub_1B0A64484();
    v13 = *(v24 + 24);
    v14 = *(v24 + 32);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v10 = sub_1B0A6A7C8(v13, v14);
    v15[4] = MEMORY[0x1E69E6158];
    v15[1] = v10;
    v15[2] = v11;
  }

  sub_1B0394964();
  type metadata accessor for Key(0);
  sub_1B0694878();
  return sub_1B0E445D8();
}

uint64_t sub_1B0A64398()
{
  sub_1B0E44838();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v1 = sub_1B0E44AC8();
  MEMORY[0x1E69E5928](v1);

  MEMORY[0x1E69E5920](v1);
  return v1;
}

id sub_1B0A64420(double a1, double a2)
{
  v2 = [swift_getObjCClassFromMetadata() valueWithCGSize_];

  return v2;
}

uint64_t sub_1B0A64484()
{
  sub_1B0E44838();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v1 = sub_1B0E44AC8();
  MEMORY[0x1E69E5928](v1);

  MEMORY[0x1E69E5920](v1);
  return v1;
}

void *sub_1B0A64540()
{
  v20 = v0;
  if (sub_1B0A63DB8(*(v0 + 48)))
  {
    v14 = [objc_opt_self() createImageAttachment];
    swift_getObjectType();
    swift_unknownObjectRetain();
    [v14 setRenderOnClient_];
    swift_unknownObjectRelease();
    swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v19 = v14;
    swift_unknownObjectRelease();
    v12 = v14;
  }

  else
  {
    v11 = [objc_opt_self() createAttachment];
    swift_unknownObjectRetain();
    v19 = v11;
    v12 = v11;
  }

  swift_unknownObjectRetain();
  swift_getObjectType();
  v7 = *(v13 + 24);
  v8 = *(v13 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0A6A7C8(v7, v8);
  v9 = sub_1B0E44AC8();

  [v12 setContentId_];
  MEMORY[0x1E69E5920](v9);
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  swift_getObjectType();
  v18[0] = sub_1B0E46A28();
  v18[1] = v1;
  v2 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v2);

  v22 = *v13;
  sub_1B074E7A8(&v22, &v17);
  v16 = v22;
  sub_1B0E469E8();
  sub_1B039E440(&v16);
  v3 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v3);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v18);
  sub_1B0E44C88();
  v10 = sub_1B0E44AC8();

  [v12 setMimePartNumber_];
  MEMORY[0x1E69E5920](v10);
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  swift_getObjectType();
  v21 = *(v13 + 8);
  sub_1B070B280(&v21, &v15);
  v23 = v21;
  if (*(&v21 + 1))
  {
    v5 = sub_1B0E44AC8();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  [v12 setFileName_];
  MEMORY[0x1E69E5920](v6);
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  swift_getObjectType();
  [v12 setFileSize_];
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  swift_getObjectType();
  [v12 setType_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_1B0A6492C(uint64_t a1)
{
  v17[2] = 0;
  v17[0] = 0;
  v16[0] = 0;
  v16[1] = 0;
  v17[3] = a1;
  v17[1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3CA0, &qword_1B0EA3E00);
  sub_1B0A64E50();
  if (sub_1B0E45748())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3BE0, &qword_1B0EA3E08);
    sub_1B0E46A48();
    sub_1B07167A8();
    return sub_1B0E445D8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3BE0, &qword_1B0EA3E08);
    sub_1B0E46A48();
    sub_1B07167A8();
    v17[0] = sub_1B0E445D8();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v15[16] = a1;
    sub_1B0E45798();
    for (i = 0; ; i = v7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3CB0, &qword_1B0EA3E10);
      sub_1B0E46518();
      memcpy(__dst, v13, sizeof(__dst));
      memcpy(v15, __dst, 0x80uLL);
      if (sub_1B0A64ED8(v15) == 1)
      {
        break;
      }

      memcpy(v18, v15, sizeof(v18));
      v9 = Message.decodedAttachmentByteCountUpperBound(attachment:)(v18);
      if (v9 > 0 && (sub_1B0A6130C(), (v8 = sub_1B0A65010(v9)) != 0))
      {
        MEMORY[0x1E69E5928](v8);
        [v8 mutableBytes];
        v1 = v8;
        sub_1B0A61378();
        sub_1B0E45718();
        v12 = sub_1B0E45E78();
        Message.decode(attachment:into:)(v18, v12, v2);
        sub_1B0A65050();
        v3 = sub_1B0E45748();
        if ((v3 & 1) == 0)
        {
          [v8 setLength_];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          MEMORY[0x1E69E5928](v8);
          sub_1B0E42F38();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3BF0, &qword_1B0EA3E18);
          sub_1B0E44788();
          MEMORY[0x1E69E5920](v8);
        }

        MEMORY[0x1E69E5920](v8);
        sub_1B08C5168(v15);
        v7 = 0;
      }

      else
      {
        sub_1B08C5168(v15);
        v7 = i;
      }
    }

    sub_1B039E440(v16);
    v5 = v17[0];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B039E440(v17);
    return v5;
  }
}

unint64_t sub_1B0A64E50()
{
  v2 = qword_1EB6E3BD8;
  if (!qword_1EB6E3BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E3CA0, &qword_1B0EA3E00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3BD8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A64ED8(void *a1)
{
  v2 = -1;
  if (*a1 < 0x100000000uLL)
  {
    v2 = *a1;
  }

  return (v2 + 1);
}

unint64_t sub_1B0A65050()
{
  v2 = qword_1EB6E3BE8;
  if (!qword_1EB6E3BE8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3BE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A650C8()
{
  v6 = v0;
  v4 = sub_1B0A63D54(*(v0 + 48));
  sub_1B0A65154(v3, v5);
  if (v4)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1B0A63DB8(*(v3 + 48));
  }

  sub_1B08D9204();
  return v2 & 1;
}

uint64_t sub_1B0A65154(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v3;
  *(a2 + 8) = a1[1];
  v4 = a1[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 16) = v4;
  *(a2 + 24) = a1[3];
  v6 = a1[4];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *(a2 + 32) = v6;
  *(a2 + 40) = a1[5];
  *(a2 + 48) = *(a1 + 48);
  return result;
}

void sub_1B0A651EC(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  memset(__b, 0, 0x31uLL);
  v29 = a1;
  v28 = a2;
  v27[1] = a3;
  __b[1] = 0;
  __b[2] = 0;
  v33 = *a1;
  sub_1B074E7A8(&v33, v27);
  __b[0] = v33;
  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  v18 = *(a1 + 72);
  sub_1B08C50F0(v16, v17);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v19 = ContentDisposition.filename.getter(v16, v17, v18);
  v20 = v4;
  sub_1B08C512C(v16, v17);

  __b[1] = v19;
  __b[2] = v20;

  v21 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v32 = *(a1 + 80);
  sub_1B070B280(&v32, &v25);
  v24 = v32;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3850, &qword_1B0E9B600);
  sub_1B03F1A20(sub_1B0A654A4, 0, v5, MEMORY[0x1E69E73E0], &unk_1F270F528, v23, v26);
  sub_1B03B1198(&v24);
  v7 = sub_1B0A6A84C(v21, v26[0], v26[1]);
  v8 = v6;

  __b[3] = v7;
  __b[4] = v8;
  v31 = *(a1 + 104);
  __b[5] = v31;
  LOBYTE(__b[6]) = a2;
  v9 = __b[0];
  v10 = __b[1];
  v11 = __b[2];
  v12 = v31;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B08C5168(a1);
  sub_1B08D9204();
  *a4 = v9;
  *(a4 + 8) = v10;
  *(a4 + 16) = v11;
  *(a4 + 24) = v7;
  *(a4 + 32) = v8;
  *(a4 + 40) = v12;
  *(a4 + 48) = a2;
}

uint64_t sub_1B0A654A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = sub_1B0A6A7C8(v4, v5);
  *a2 = result;
  a2[1] = v3;
  return result;
}

void sub_1B0A65508(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  memset(__b, 0, 0x31uLL);
  v32 = 0;
  v33 = 0;
  v39 = a1;
  v38 = a2;
  v43 = *(a1 + 80);
  sub_1B070B280(&v43, &v35);
  v34 = v43;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3850, &qword_1B0E9B600);
  sub_1B03F1A20(sub_1B0A654A4, 0, v3, MEMORY[0x1E69E73E0], &unk_1F270F528, v30, &v36);
  sub_1B03B1198(&v34);
  v25 = v36;
  v26 = v37;
  if (!v37)
  {
    goto LABEL_7;
  }

  v32 = v36;
  v33 = v37;
  memcpy(__dst, a2 + 4, 0x21uLL);
  sub_1B07ACB48(__dst, v31);
  memcpy(v45, __dst, sizeof(v45));
  if (v45[32] == 255)
  {

LABEL_7:
    sub_1B07AD030(a2);
    sub_1B08C5168(a1);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    goto LABEL_8;
  }

  memcpy(v46, v45, sizeof(v46));
  memcpy(v44, v46, 0x21uLL);
  v10 = *a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = a2[1];
  v8 = a2[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9 = sub_1B0E450E8();
  v5 = a2[1];
  v6 = a2[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = sub_1B0A658C8(v44, v5, v6);
  sub_1B0A63AD4(v10, v7, v8, v25, v26, v9, v4, v41);
  memcpy(__b, v41, 0x31uLL);

  v12 = __b[0];
  v13 = __b[1];
  v14 = __b[2];
  v15 = __b[3];
  v16 = __b[4];
  v17 = __b[5];
  v11 = __b[6];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07AD030(a2);
  sub_1B08C5168(a1);
  sub_1B08D9204();
  v18 = v12;
  v19 = v13;
  v20 = v14;
  v21 = v15;
  v22 = v16;
  v23 = v17;
  v24 = v11;
LABEL_8:
  *a3 = v18;
  *(a3 + 8) = v19;
  *(a3 + 16) = v20;
  *(a3 + 24) = v21;
  *(a3 + 32) = v22;
  *(a3 + 40) = v23;
  *(a3 + 48) = v24;
}

uint64_t sub_1B0A658C8(void *a1, uint64_t a2, uint64_t a3)
{
  v277 = v359;
  v283 = a1;
  v326 = a2;
  v327 = a3;
  v397 = 0;
  v395 = 0;
  v393 = 0;
  v394 = 0;
  v340 = 0;
  v341 = 0;
  v278 = sub_1B0E43788();
  v279 = *(v278 - 8);
  v280 = v278 - 8;
  v281 = (*(v279 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v278);
  v282 = &v72[-v281];
  v284 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1FE0, &qword_1B0E9B2B0) - 8) + 64);
  v285 = (v284 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v283);
  v286 = &v72[-v285];
  v287 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v288 = &v72[-v287];
  v289 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v290 = &v72[-v289];
  v291 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v292 = &v72[-v291];
  v293 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v294 = &v72[-v293];
  v295 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v296 = &v72[-v295];
  v297 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v298 = &v72[-v297];
  v299 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16);
  v300 = &v72[-v299];
  v301 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v302 = &v72[-v301];
  v303 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v304 = &v72[-v303];
  v305 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22);
  v306 = &v72[-v305];
  v307 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v24);
  v308 = &v72[-v307];
  v309 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v310 = &v72[-v309];
  v311 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v28);
  v312 = &v72[-v311];
  v313 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v30);
  v314 = &v72[-v313];
  v315 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v32);
  v316 = &v72[-v315];
  v317 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34);
  v318 = &v72[-v317];
  v319 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v36);
  v320 = &v72[-v319];
  v321 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v38);
  v322 = &v72[-v321];
  v323 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v40);
  v324 = &v72[-v323];
  v397 = &v72[-v323];
  v395 = v41;
  v393 = v42;
  v394 = v43;
  v325 = objc_opt_self();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v389 = v326;
  v390 = v327;
  if (v327)
  {
    v391 = v389;
    v392 = v390;
  }

  else
  {
    v391 = sub_1B0E44838();
    v392 = v44;
    if (v390)
    {
      sub_1B03B1198(&v389);
    }
  }

  v263 = v392;
  v275 = sub_1B0E44AC8();

  v267 = 0;
  v45 = sub_1B0E46A28();
  v270 = &v387;
  v387 = v45;
  v388 = v46;
  v266 = "";
  v268 = 1;
  v47 = sub_1B0E44838();
  v264 = v48;
  MEMORY[0x1B2728B30](v47);

  v265 = v386;
  memcpy(v386, v283, 0x21uLL);
  sub_1B0A68338();
  sub_1B0E469F8();
  v49 = sub_1B0E44838();
  v269 = v50;
  MEMORY[0x1B2728B30](v49);

  v272 = v387;
  v271 = v388;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v270);
  sub_1B0E44C88();
  v273 = v51;
  v274 = sub_1B0E44AC8();

  v276 = [v325 fileTypeForFilename:v275 mimeType:v274];
  MEMORY[0x1E69E5920](v274);
  MEMORY[0x1E69E5920](v275);
  if (v276)
  {
    v262 = v276;
    v261 = v276;
    sub_1B0E43678();
    (*(v279 + 32))(v322, v282, v278);
    (*(v279 + 56))(v322, 0, 1, v278);
    MEMORY[0x1E69E5920](v261);
  }

  else
  {
    (*(v279 + 56))(v322, 1, 1, v278);
  }

  sub_1B0A683B0(v322, v324);
  v259 = sub_1B0E44838();
  v257 = v52;
  v406[0] = v259;
  v406[1] = v52;
  v258 = 0;
  v406[2] = 0;
  v406[3] = 0;
  v407 = 3;
  v260 = static MediaType.__derived_enum_equals(_:_:)(v283, v406);
  sub_1B07ACE18(v259, v257, v258, v258, 3);
  if ((v260 & 1) == 0)
  {
    sub_1B0A684D8(v324, v320);
    v254 = *(v279 + 48);
    v255 = v279 + 48;
    if (v254(v320, 1, v278) == 1)
    {
      sub_1B075D100(v320);
      v253 = 2;
    }

    else
    {
      sub_1B0E436A8();
      v252 = sub_1B0E43738();
      v251 = *(v279 + 8);
      v250 = v279 + 8;
      v251(v282, v278);
      v251(v320, v278);
      v253 = v252 & 1;
    }

    v385 = v253;
    if (v253 == 2)
    {
      v249 = 0;
    }

    else
    {
      v249 = v385;
    }

    if (v249)
    {
      v396 = 13;
      v248 = 13;
LABEL_275:
      v256 = v248;
      goto LABEL_276;
    }

    sub_1B0A684D8(v324, v318);
    if (v254(v318, 1, v278) == 1)
    {
      sub_1B075D100(v318);
      v247 = 2;
    }

    else
    {
      sub_1B0E43698();
      v246 = sub_1B0E43738();
      v245 = *(v279 + 8);
      v244 = v279 + 8;
      v245(v282, v278);
      v245(v318, v278);
      v247 = v246 & 1;
    }

    v384 = v247;
    if (v247 == 2)
    {
      v243 = 0;
    }

    else
    {
      v243 = v384;
    }

    if (v243)
    {
      v396 = 21;
      v242 = 21;
LABEL_274:
      v248 = v242;
      goto LABEL_275;
    }

    sub_1B07B4718(v283, &v383);
    memcpy(__dst, v283, sizeof(__dst));
    if (__dst[32] == 3)
    {
      v405 = v277[41];
      sub_1B03B1198(&v405);
      v396 = 4;
      v241 = 4;
LABEL_273:
      v242 = v241;
      goto LABEL_274;
    }

    sub_1B07AD0E0(v283);
    if (sub_1B0A68708(v283))
    {
      v396 = 5;
      v240 = 5;
LABEL_272:
      v241 = v240;
      goto LABEL_273;
    }

    sub_1B07B4718(v283, &v382);
    memcpy(v402, v283, sizeof(v402));
    if (v402[32] != 4)
    {
      sub_1B07AD0E0(v283);
      goto LABEL_47;
    }

    v403 = v277[37];
    v238 = sub_1B0E44838();
    v239 = v53;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v333 = v403;
    v330 = v238;
    v331 = v239;
    sub_1B070B280(&v333, &v332);
    if (v331)
    {
      sub_1B070B280(&v330, v329);
      if (*(&v332 + 1))
      {
        v234 = &v328;
        v328 = v332;
        v235 = v329;
        v236 = MEMORY[0x1B2726DE0](v329[0], v329[1], v332, *(&v332 + 1));
        sub_1B03B1198(v234);
        sub_1B03B1198(v235);
        sub_1B03B1198(&v330);
        v237 = v236;
LABEL_42:
        v233 = v237;

        if (v233)
        {
          sub_1B03B1198(&v403);
          v396 = 6;
          v232 = 6;
LABEL_271:
          v240 = v232;
          goto LABEL_272;
        }

        sub_1B03B1198(&v403);
LABEL_47:
        sub_1B07B4718(v283, &v381);
        memcpy(v400, v283, sizeof(v400));
        if (v400[32] != 4)
        {
          sub_1B07AD0E0(v283);
          goto LABEL_60;
        }

        v401 = v277[33];
        v230 = sub_1B0E44838();
        v231 = v54;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v339 = v401;
        v336 = v230;
        v337 = v231;
        sub_1B070B280(&v339, &v338);
        if (v337)
        {
          sub_1B070B280(&v336, v335);
          if (*(&v338 + 1))
          {
            v226 = &v334;
            v334 = v338;
            v227 = v335;
            v228 = MEMORY[0x1B2726DE0](v335[0], v335[1], v338, *(&v338 + 1));
            sub_1B03B1198(v226);
            sub_1B03B1198(v227);
            sub_1B03B1198(&v336);
            v229 = v228;
LABEL_55:
            v225 = v229;

            if (v225)
            {
              sub_1B03B1198(&v401);
              v396 = 6;
              v224 = 6;
LABEL_270:
              v232 = v224;
              goto LABEL_271;
            }

            sub_1B03B1198(&v401);
LABEL_60:
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            if (v327)
            {
              v222 = v326;
              v223 = v327;
              v220 = v327;
              v214 = v326;
              v340 = v326;
              v341 = v327;
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v215 = sub_1B0E44AC8();
              v219 = [v215 pathExtension];
              v216 = sub_1B0E44AD8();
              v218 = v55;
              MEMORY[0x1E69E5920](v215);
              v56 = sub_1B0E44838();
              v217 = v57;
              v221 = MEMORY[0x1B2726DE0](v216, v218, v56);

              MEMORY[0x1E69E5920](v219);

              if (v221)
              {
                v396 = 6;

                v213 = 6;
LABEL_269:
                v224 = v213;
                goto LABEL_270;
              }
            }

            sub_1B07B4718(v283, &v380);
            memcpy(v398, v283, sizeof(v398));
            if (v398[32] != 5)
            {
              sub_1B07AD0E0(v283);
              goto LABEL_79;
            }

            v399 = v277[29];
            v211 = sub_1B0E44838();
            v212 = v58;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v347 = v399;
            v344 = v211;
            v345 = v212;
            sub_1B070B280(&v347, &v346);
            if (v345)
            {
              sub_1B070B280(&v344, v343);
              if (*(&v346 + 1))
              {
                v207 = &v342;
                v342 = v346;
                v208 = v343;
                v209 = MEMORY[0x1B2726DE0](v343[0], v343[1], v346, *(&v346 + 1));
                sub_1B03B1198(v207);
                sub_1B03B1198(v208);
                sub_1B03B1198(&v344);
                v210 = v209;
LABEL_74:
                v206 = v210;

                if (v206)
                {
                  sub_1B03B1198(&v399);
                  v396 = 12;
                  v205 = 12;
LABEL_268:
                  v213 = v205;
                  goto LABEL_269;
                }

                sub_1B03B1198(&v399);
LABEL_79:
                sub_1B0A684D8(v324, v316);
                if (v254(v316, 1, v278) == 1)
                {
                  sub_1B075D100(v316);
                  v204 = 2;
                }

                else
                {
                  sub_1B0E43748();
                  v203 = sub_1B0E43738();
                  v202 = *(v279 + 8);
                  v201 = v279 + 8;
                  v202(v282, v278);
                  v202(v316, v278);
                  v204 = v203 & 1;
                }

                v379 = v204;
                if (v204 == 2)
                {
                  v200 = 0;
                }

                else
                {
                  v200 = v379;
                }

                if (v200)
                {
                  v396 = 19;
                  v199 = 19;
LABEL_267:
                  v205 = v199;
                  goto LABEL_268;
                }

                sub_1B0A684D8(v324, v314);
                if (v254(v314, 1, v278) == 1)
                {
                  sub_1B075D100(v314);
                  v198 = 2;
                }

                else
                {
                  sub_1B0E43618();
                  v197 = sub_1B0E43738();
                  v196 = *(v279 + 8);
                  v195 = v279 + 8;
                  v196(v282, v278);
                  v196(v314, v278);
                  v198 = v197 & 1;
                }

                v378 = v198;
                if (v198 == 2)
                {
                  v194 = 0;
                }

                else
                {
                  v194 = v378;
                }

                if (v194)
                {
                  v396 = 19;
                  v193 = 19;
LABEL_266:
                  v199 = v193;
                  goto LABEL_267;
                }

                sub_1B0A684D8(v324, v312);
                if (v254(v312, 1, v278) == 1)
                {
                  sub_1B075D100(v312);
                  v192 = 2;
                }

                else
                {
                  sub_1B0E436B8();
                  v191 = sub_1B0E43738();
                  v190 = *(v279 + 8);
                  v189 = v279 + 8;
                  v190(v282, v278);
                  v190(v312, v278);
                  v192 = v191 & 1;
                }

                v377 = v192;
                if (v192 == 2)
                {
                  v188 = 0;
                }

                else
                {
                  v188 = v377;
                }

                if (v188)
                {
                  v396 = 9;
                  v187 = 9;
LABEL_265:
                  v193 = v187;
                  goto LABEL_266;
                }

                sub_1B0A684D8(v324, v310);
                if (v254(v310, 1, v278) == 1)
                {
                  sub_1B075D100(v310);
                  v186 = 2;
                }

                else
                {
                  sub_1B0E43648();
                  v185 = sub_1B0E43738();
                  v184 = *(v279 + 8);
                  v183 = v279 + 8;
                  v184(v282, v278);
                  v184(v310, v278);
                  v186 = v185 & 1;
                }

                v376 = v186;
                if (v186 == 2)
                {
                  v182 = 0;
                }

                else
                {
                  v182 = v376;
                }

                if (v182)
                {
                  v396 = 10;
                  v181 = 10;
LABEL_264:
                  v187 = v181;
                  goto LABEL_265;
                }

                sub_1B0A684D8(v324, v308);
                if (v254(v308, 1, v278) == 1)
                {
                  sub_1B075D100(v308);
                  v180 = 2;
                }

                else
                {
                  sub_1B0E436F8();
                  v179 = sub_1B0E43738();
                  v178 = *(v279 + 8);
                  v177 = v279 + 8;
                  v178(v282, v278);
                  v178(v308, v278);
                  v180 = v179 & 1;
                }

                v375 = v180;
                if (v180 == 2)
                {
                  v176 = 0;
                }

                else
                {
                  v176 = v375;
                }

                if (v176)
                {
                  v396 = 15;
                  v175 = 15;
LABEL_263:
                  v181 = v175;
                  goto LABEL_264;
                }

                sub_1B0A684D8(v324, v306);
                if (v254(v306, 1, v278) == 1)
                {
                  sub_1B075D100(v306);
                  v174 = 2;
                }

                else
                {
                  sub_1B0E43708();
                  v173 = sub_1B0E43738();
                  v172 = *(v279 + 8);
                  v171 = v279 + 8;
                  v172(v282, v278);
                  v172(v306, v278);
                  v174 = v173 & 1;
                }

                v374 = v174;
                if (v174 == 2)
                {
                  v170 = 0;
                }

                else
                {
                  v170 = v374;
                }

                if (v170)
                {
                  v396 = 3;
                  v169 = 3;
LABEL_262:
                  v175 = v169;
                  goto LABEL_263;
                }

                sub_1B0A684D8(v324, v304);
                if (v254(v304, 1, v278) == 1)
                {
                  sub_1B075D100(v304);
                  v168 = 2;
                }

                else
                {
                  sub_1B0E436C8();
                  v167 = sub_1B0E43738();
                  v166 = *(v279 + 8);
                  v165 = v279 + 8;
                  v166(v282, v278);
                  v166(v304, v278);
                  v168 = v167 & 1;
                }

                v373 = v168;
                if (v168 == 2)
                {
                  v164 = 0;
                }

                else
                {
                  v164 = v373;
                }

                if (v164)
                {
                  v396 = 14;
                  v163 = 14;
LABEL_261:
                  v169 = v163;
                  goto LABEL_262;
                }

                sub_1B0A684D8(v324, v302);
                if (v254(v302, 1, v278) == 1)
                {
                  sub_1B075D100(v302);
                  v162 = 2;
                }

                else
                {
                  sub_1B0E436E8();
                  v161 = sub_1B0E43738();
                  v160 = *(v279 + 8);
                  v159 = v279 + 8;
                  v160(v282, v278);
                  v160(v302, v278);
                  v162 = v161 & 1;
                }

                v372 = v162;
                if (v162 == 2)
                {
                  v158 = 0;
                }

                else
                {
                  v158 = v372;
                }

                if (v158)
                {
                  v396 = 14;
                  v157 = 14;
LABEL_260:
                  v163 = v157;
                  goto LABEL_261;
                }

                sub_1B0A684D8(v324, v300);
                if (v254(v300, 1, v278) == 1)
                {
                  sub_1B075D100(v300);
                  v156 = 2;
                }

                else
                {
                  sub_1B0E43688();
                  v155 = sub_1B0E43738();
                  v154 = *(v279 + 8);
                  v153 = v279 + 8;
                  v154(v282, v278);
                  v154(v300, v278);
                  v156 = v155 & 1;
                }

                v371 = v156;
                if (v156 == 2)
                {
                  v152 = 0;
                }

                else
                {
                  v152 = v371;
                }

                if (v152)
                {
                  v396 = 14;
                  v151 = 14;
LABEL_259:
                  v157 = v151;
                  goto LABEL_260;
                }

                v59 = sub_1B0A688DC(v283);
                if (v59)
                {
                  v396 = 16;
                  v150 = 16;
LABEL_258:
                  v151 = v150;
                  goto LABEL_259;
                }

                if (sub_1B0A69000(v283))
                {
                  v396 = 17;
                  v149 = 17;
LABEL_257:
                  v150 = v149;
                  goto LABEL_258;
                }

                if (sub_1B0A699CC(v283))
                {
                  v396 = 18;
                  v148 = 18;
LABEL_256:
                  v149 = v148;
                  goto LABEL_257;
                }

                sub_1B0A684D8(v324, v298);
                if (v254(v298, 1, v278) == 1)
                {
                  sub_1B075D100(v298);
                  v147 = 2;
                }

                else
                {
                  sub_1B0E43628();
                  v146 = sub_1B0E43738();
                  v145 = *(v279 + 8);
                  v144 = v279 + 8;
                  v145(v282, v278);
                  v145(v298, v278);
                  v147 = v146 & 1;
                }

                v370 = v147;
                if (v147 == 2)
                {
                  v143 = 0;
                }

                else
                {
                  v143 = v370;
                }

                if (v143)
                {
                  v396 = 11;
                  v142 = 11;
LABEL_255:
                  v148 = v142;
                  goto LABEL_256;
                }

                sub_1B0A684D8(v324, v296);
                if (v254(v296, 1, v278) == 1)
                {
                  sub_1B075D100(v296);
                  v140 = 0;
                  v141 = 0;
                }

                else
                {
                  v138 = sub_1B0E43608();
                  v139 = v60;
                  (*(v279 + 8))(v296, v278);
                  v140 = v138;
                  v141 = v139;
                }

                v136 = v141;
                v135 = v140;
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                v134 = sub_1B0E44838();
                v137 = v61;
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                v368[0] = v135;
                v368[1] = v136;
                v368[2] = v134;
                v369 = v137;
                if (v136)
                {
                  sub_1B070B280(v368, &v350);
                  if (v369)
                  {
                    v131 = &v349;
                    v349 = v350;
                    v62 = v277[9];
                    v130 = &v348;
                    v348 = v62;
                    v132 = MEMORY[0x1B2726DE0](v350, *(&v350 + 1), v62, *(&v62 + 1));
                    sub_1B03B1198(v130);
                    sub_1B03B1198(v131);
                    sub_1B03B1198(v368);
                    v133 = v132;
                    goto LABEL_184;
                  }

                  sub_1B03B1198(&v350);
                }

                else if (!v369)
                {
                  sub_1B03B1198(v368);
                  v133 = 1;
LABEL_184:
                  v129 = v133;

                  if (v129)
                  {
                    v396 = 2;
                    v128 = 2;
LABEL_254:
                    v142 = v128;
                    goto LABEL_255;
                  }

                  sub_1B0A684D8(v324, v294);
                  if (v254(v294, 1, v278) == 1)
                  {
                    sub_1B075D100(v294);
                    v126 = 0;
                    v127 = 0;
                  }

                  else
                  {
                    v124 = sub_1B0E43608();
                    v125 = v63;
                    (*(v279 + 8))(v294, v278);
                    v126 = v124;
                    v127 = v125;
                  }

                  v122 = v127;
                  v121 = v126;
                  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                  v120 = sub_1B0E44838();
                  v123 = v64;
                  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                  v366[0] = v121;
                  v366[1] = v122;
                  v366[2] = v120;
                  v367 = v123;
                  if (v122)
                  {
                    sub_1B070B280(v366, &v353);
                    if (v367)
                    {
                      v117 = &v352;
                      v352 = v353;
                      v65 = v277[7];
                      v116 = &v351;
                      v351 = v65;
                      v118 = MEMORY[0x1B2726DE0](v353, *(&v353 + 1), v65, *(&v65 + 1));
                      sub_1B03B1198(v116);
                      sub_1B03B1198(v117);
                      sub_1B03B1198(v366);
                      v119 = v118;
                      goto LABEL_198;
                    }

                    sub_1B03B1198(&v353);
                  }

                  else if (!v367)
                  {
                    sub_1B03B1198(v366);
                    v119 = 1;
LABEL_198:
                    v115 = v119;

                    if (v115)
                    {
                      v396 = 2;
                      v114 = 2;
LABEL_253:
                      v128 = v114;
                      goto LABEL_254;
                    }

                    sub_1B0A684D8(v324, v292);
                    if (v254(v292, 1, v278) == 1)
                    {
                      sub_1B075D100(v292);
                      v113 = 2;
                    }

                    else
                    {
                      sub_1B0E43718();
                      v112 = sub_1B0E43738();
                      v111 = *(v279 + 8);
                      v110 = v279 + 8;
                      v111(v282, v278);
                      v111(v292, v278);
                      v113 = v112 & 1;
                    }

                    v365 = v113;
                    if (v113 == 2)
                    {
                      v109 = 0;
                    }

                    else
                    {
                      v109 = v365;
                    }

                    if (v109)
                    {
                      v396 = 7;
                      v108 = 7;
LABEL_252:
                      v114 = v108;
                      goto LABEL_253;
                    }

                    sub_1B0A684D8(v324, v290);
                    if (v254(v290, 1, v278) == 1)
                    {
                      sub_1B075D100(v290);
                      v106 = 0;
                      v107 = 0;
                    }

                    else
                    {
                      v104 = sub_1B0E43608();
                      v105 = v66;
                      (*(v279 + 8))(v290, v278);
                      v106 = v104;
                      v107 = v105;
                    }

                    v102 = v107;
                    v101 = v106;
                    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                    v100 = sub_1B0E44838();
                    v103 = v67;
                    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                    v363[0] = v101;
                    v363[1] = v102;
                    *&v364 = v100;
                    *(&v364 + 1) = v103;
                    if (v102)
                    {
                      sub_1B070B280(v363, &v356);
                      if (*(&v364 + 1))
                      {
                        v97 = &v355;
                        v355 = v356;
                        v96 = &v354;
                        v354 = v364;
                        v98 = MEMORY[0x1B2726DE0](v356, *(&v356 + 1), v364, *(&v364 + 1));
                        sub_1B03B1198(v96);
                        sub_1B03B1198(v97);
                        sub_1B03B1198(v363);
                        v99 = v98;
                        goto LABEL_221;
                      }

                      sub_1B03B1198(&v356);
                    }

                    else if (!*(&v364 + 1))
                    {
                      sub_1B03B1198(v363);
                      v99 = 1;
LABEL_221:
                      v95 = v99;

                      if (v95)
                      {
                        v396 = 20;
                        v94 = 20;
LABEL_251:
                        v108 = v94;
                        goto LABEL_252;
                      }

                      sub_1B0A684D8(v324, v288);
                      if (v254(v288, 1, v278) == 1)
                      {
                        sub_1B075D100(v288);
                        v92 = 0;
                        v93 = 0;
                      }

                      else
                      {
                        v90 = sub_1B0E43608();
                        v91 = v68;
                        (*(v279 + 8))(v288, v278);
                        v92 = v90;
                        v93 = v91;
                      }

                      v88 = v93;
                      v87 = v92;
                      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                      v86 = sub_1B0E44838();
                      v89 = v69;
                      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                      v361[0] = v87;
                      v361[1] = v88;
                      *&v362 = v86;
                      *(&v362 + 1) = v89;
                      if (v88)
                      {
                        sub_1B070B280(v361, v359);
                        if (*(&v362 + 1))
                        {
                          v70 = *v277;
                          v83 = &v358;
                          v358 = v70;
                          v82 = &v357;
                          v357 = v362;
                          v84 = MEMORY[0x1B2726DE0](v70, *(&v70 + 1), v362, *(&v362 + 1));
                          sub_1B03B1198(v82);
                          sub_1B03B1198(v83);
                          sub_1B03B1198(v361);
                          v85 = v84;
LABEL_235:
                          v81 = v85;

                          if (v81)
                          {
                            v396 = 22;
                            v80 = 22;
                          }

                          else
                          {
                            sub_1B0A684D8(v324, v286);
                            if (v254(v286, 1, v278) == 1)
                            {
                              sub_1B075D100(v286);
                              v79 = 2;
                            }

                            else
                            {
                              sub_1B0E43778();
                              v78 = sub_1B0E43738();
                              v77 = *(v279 + 8);
                              v76 = v279 + 8;
                              v77(v282, v278);
                              v77(v286, v278);
                              v79 = v78 & 1;
                            }

                            v360 = v79;
                            if (v79 == 2)
                            {
                              v75 = 0;
                            }

                            else
                            {
                              v75 = v360;
                            }

                            if (v75)
                            {
                              v396 = 8;
                              v74 = 8;
                            }

                            else
                            {
                              v396 = 0;
                              v74 = 0;
                            }

                            v80 = v74;
                          }

                          v94 = v80;
                          goto LABEL_251;
                        }

                        sub_1B03B1198(v359);
                      }

                      else if (!*(&v362 + 1))
                      {
                        sub_1B03B1198(v361);
                        v85 = 1;
                        goto LABEL_235;
                      }

                      sub_1B06FF6F0(v361);
                      v85 = 0;
                      goto LABEL_235;
                    }

                    sub_1B06FF6F0(v363);
                    v99 = 0;
                    goto LABEL_221;
                  }

                  sub_1B06FF6F0(v366);
                  v119 = 0;
                  goto LABEL_198;
                }

                sub_1B06FF6F0(v368);
                v133 = 0;
                goto LABEL_184;
              }

              sub_1B03B1198(v343);
            }

            else if (!*(&v346 + 1))
            {
              sub_1B03B1198(&v344);
              v210 = 1;
              goto LABEL_74;
            }

            sub_1B06FF6F0(&v344);
            v210 = 0;
            goto LABEL_74;
          }

          sub_1B03B1198(v335);
        }

        else if (!*(&v338 + 1))
        {
          sub_1B03B1198(&v336);
          v229 = 1;
          goto LABEL_55;
        }

        sub_1B06FF6F0(&v336);
        v229 = 0;
        goto LABEL_55;
      }

      sub_1B03B1198(v329);
    }

    else if (!*(&v332 + 1))
    {
      sub_1B03B1198(&v330);
      v237 = 1;
      goto LABEL_42;
    }

    sub_1B06FF6F0(&v330);
    v237 = 0;
    goto LABEL_42;
  }

  v396 = 1;
  v256 = 1;
LABEL_276:
  v73 = v256;
  sub_1B075D100(v324);

  sub_1B07AD0E0(v283);
  return v73;
}

unint64_t sub_1B0A68338()
{
  v2 = qword_1EB6E3BF8;
  if (!qword_1EB6E3BF8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3BF8);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B0A683B0(const void *a1, void *a2)
{
  v6 = sub_1B0E43788();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1FE0, &qword_1B0E9B2B0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_1B0A684D8(const void *a1, void *a2)
{
  v6 = sub_1B0E43788();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1FE0, &qword_1B0E9B2B0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1B0A68600(void *a1)
{
  v12 = a1;
  memcpy(__dst, a1 + 1, sizeof(__dst));
  sub_1B0A6A0F0(__dst, v11);
  memcpy(v15, __dst, 0x21uLL);
  sub_1B07B4718(v15, v10);
  sub_1B0A6A18C(__dst);
  v3 = a1[7];
  v4 = a1[8];
  v5 = a1[9];
  sub_1B08C50F0(v3, v4);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = ContentDisposition.filename.getter(v3, v4, v5);
  v7 = v1;
  sub_1B08C512C(v3, v4);

  v9 = sub_1B0A658C8(v15, v6, v7);
  v13 = v9;
  sub_1B08C5168(a1);
  return v9;
}

uint64_t sub_1B0A68708(const void *a1)
{
  v13 = a1;
  v6 = [objc_opt_self() audiovisualMIMETypes];
  v12 = sub_1B0E451B8();
  MEMORY[0x1E69E5920](v6);
  v11[2] = v12;
  v11[0] = sub_1B0E46A28();
  v11[1] = v1;
  v2 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v2);

  memcpy(__dst, a1, sizeof(__dst));
  sub_1B0A68338();
  sub_1B0E469F8();
  v3 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v3);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v11);
  v9[0] = sub_1B0E44C88();
  v9[1] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B06E3764();
  v8 = sub_1B0E450A8();
  sub_1B03B1198(v9);

  return v8 & 1;
}

uint64_t sub_1B0A688DC(void *__src)
{
  v61[2] = __src;
  memcpy(__dst, __src, sizeof(__dst));
  if (__dst[32] != 1)
  {
    goto LABEL_57;
  }

  v63 = *__dst;
  sub_1B070B280(&v63, v61);
  v26 = sub_1B0E44838();
  v27 = v1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v60 = v63;
  v58[0] = v26;
  v58[1] = v27;
  sub_1B070B280(&v60, &v59);
  if (v27)
  {
    sub_1B070B280(v58, v29);
    if (*(&v59 + 1))
    {
      v28 = v59;
      v24 = MEMORY[0x1B2726DE0](v29[0], v29[1], v59, *(&v59 + 1));
      sub_1B03B1198(&v28);
      sub_1B03B1198(v29);
      sub_1B03B1198(v58);
      v25 = v24;
      goto LABEL_8;
    }

    sub_1B03B1198(v29);
    goto LABEL_10;
  }

  if (*(&v59 + 1))
  {
LABEL_10:
    sub_1B06FF6F0(v58);
    v25 = 0;
    goto LABEL_8;
  }

  sub_1B03B1198(v58);
  v25 = 1;
LABEL_8:

  if (v25)
  {
    goto LABEL_56;
  }

  sub_1B03B1198(&v63);
  sub_1B070B280(&v63, &v57);
  v22 = sub_1B0E44838();
  v23 = v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v56 = v63;
  v53 = v22;
  v54 = v23;
  sub_1B070B280(&v56, &v55);
  if (v54)
  {
    sub_1B070B280(&v53, v31);
    if (*(&v55 + 1))
    {
      v30 = v55;
      v20 = MEMORY[0x1B2726DE0](v31[0], v31[1], v55, *(&v55 + 1));
      sub_1B03B1198(&v30);
      sub_1B03B1198(v31);
      sub_1B03B1198(&v53);
      v21 = v20;
      goto LABEL_19;
    }

    sub_1B03B1198(v31);
    goto LABEL_21;
  }

  if (*(&v55 + 1))
  {
LABEL_21:
    sub_1B06FF6F0(&v53);
    v21 = 0;
    goto LABEL_19;
  }

  sub_1B03B1198(&v53);
  v21 = 1;
LABEL_19:

  if (v21)
  {
    goto LABEL_56;
  }

  sub_1B03B1198(&v63);
  sub_1B070B280(&v63, &v52);
  v18 = sub_1B0E44838();
  v19 = v3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v51 = v63;
  v48 = v18;
  v49 = v19;
  sub_1B070B280(&v51, &v50);
  if (v49)
  {
    sub_1B070B280(&v48, v33);
    if (*(&v50 + 1))
    {
      v32 = v50;
      v16 = MEMORY[0x1B2726DE0](v33[0], v33[1], v50, *(&v50 + 1));
      sub_1B03B1198(&v32);
      sub_1B03B1198(v33);
      sub_1B03B1198(&v48);
      v17 = v16;
      goto LABEL_30;
    }

    sub_1B03B1198(v33);
    goto LABEL_32;
  }

  if (*(&v50 + 1))
  {
LABEL_32:
    sub_1B06FF6F0(&v48);
    v17 = 0;
    goto LABEL_30;
  }

  sub_1B03B1198(&v48);
  v17 = 1;
LABEL_30:

  if (v17)
  {
    goto LABEL_56;
  }

  sub_1B03B1198(&v63);
  sub_1B070B280(&v63, &v47);
  v14 = sub_1B0E44838();
  v15 = v4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v46 = v63;
  v43 = v14;
  v44 = v15;
  sub_1B070B280(&v46, &v45);
  if (v44)
  {
    sub_1B070B280(&v43, v35);
    if (*(&v45 + 1))
    {
      v34 = v45;
      v12 = MEMORY[0x1B2726DE0](v35[0], v35[1], v45, *(&v45 + 1));
      sub_1B03B1198(&v34);
      sub_1B03B1198(v35);
      sub_1B03B1198(&v43);
      v13 = v12;
      goto LABEL_41;
    }

    sub_1B03B1198(v35);
    goto LABEL_43;
  }

  if (*(&v45 + 1))
  {
LABEL_43:
    sub_1B06FF6F0(&v43);
    v13 = 0;
    goto LABEL_41;
  }

  sub_1B03B1198(&v43);
  v13 = 1;
LABEL_41:

  if (v13)
  {
    goto LABEL_56;
  }

  sub_1B03B1198(&v63);
  sub_1B070B280(&v63, &v42);
  v10 = sub_1B0E44838();
  v11 = v5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v41 = v63;
  v38 = v10;
  v39 = v11;
  sub_1B070B280(&v41, &v40);
  if (v39)
  {
    sub_1B070B280(&v38, v37);
    if (*(&v40 + 1))
    {
      v36 = v40;
      v8 = MEMORY[0x1B2726DE0](v37[0], v37[1], v40, *(&v40 + 1));
      sub_1B03B1198(&v36);
      sub_1B03B1198(v37);
      sub_1B03B1198(&v38);
      v9 = v8;
      goto LABEL_52;
    }

    sub_1B03B1198(v37);
    goto LABEL_54;
  }

  if (*(&v40 + 1))
  {
LABEL_54:
    sub_1B06FF6F0(&v38);
    v9 = 0;
    goto LABEL_52;
  }

  sub_1B03B1198(&v38);
  v9 = 1;
LABEL_52:

  if ((v9 & 1) == 0)
  {
    sub_1B03B1198(&v63);
LABEL_57:
    v7 = 0;
    return v7 & 1;
  }

LABEL_56:
  sub_1B03B1198(&v63);
  v7 = 1;
  return v7 & 1;
}

uint64_t sub_1B0A69000(void *__src)
{
  v85[2] = __src;
  memcpy(__dst, __src, sizeof(__dst));
  if (__dst[32] != 1)
  {
    goto LABEL_79;
  }

  v87 = *__dst;
  sub_1B070B280(&v87, v85);
  v36 = sub_1B0E44838();
  v37 = v1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v84 = v87;
  v82[0] = v36;
  v82[1] = v37;
  sub_1B070B280(&v84, &v83);
  if (v37)
  {
    sub_1B070B280(v82, v39);
    if (*(&v83 + 1))
    {
      v38 = v83;
      v34 = MEMORY[0x1B2726DE0](v39[0], v39[1], v83, *(&v83 + 1));
      sub_1B03B1198(&v38);
      sub_1B03B1198(v39);
      sub_1B03B1198(v82);
      v35 = v34;
      goto LABEL_8;
    }

    sub_1B03B1198(v39);
    goto LABEL_10;
  }

  if (*(&v83 + 1))
  {
LABEL_10:
    sub_1B06FF6F0(v82);
    v35 = 0;
    goto LABEL_8;
  }

  sub_1B03B1198(v82);
  v35 = 1;
LABEL_8:

  if (v35)
  {
    goto LABEL_78;
  }

  sub_1B03B1198(&v87);
  sub_1B070B280(&v87, &v81);
  v32 = sub_1B0E44838();
  v33 = v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v80 = v87;
  v77 = v32;
  v78 = v33;
  sub_1B070B280(&v80, &v79);
  if (v78)
  {
    sub_1B070B280(&v77, v41);
    if (*(&v79 + 1))
    {
      v40 = v79;
      v30 = MEMORY[0x1B2726DE0](v41[0], v41[1], v79, *(&v79 + 1));
      sub_1B03B1198(&v40);
      sub_1B03B1198(v41);
      sub_1B03B1198(&v77);
      v31 = v30;
      goto LABEL_19;
    }

    sub_1B03B1198(v41);
    goto LABEL_21;
  }

  if (*(&v79 + 1))
  {
LABEL_21:
    sub_1B06FF6F0(&v77);
    v31 = 0;
    goto LABEL_19;
  }

  sub_1B03B1198(&v77);
  v31 = 1;
LABEL_19:

  if (v31)
  {
    goto LABEL_78;
  }

  sub_1B03B1198(&v87);
  sub_1B070B280(&v87, &v76);
  v28 = sub_1B0E44838();
  v29 = v3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v75 = v87;
  v72 = v28;
  v73 = v29;
  sub_1B070B280(&v75, &v74);
  if (v73)
  {
    sub_1B070B280(&v72, v43);
    if (*(&v74 + 1))
    {
      v42 = v74;
      v26 = MEMORY[0x1B2726DE0](v43[0], v43[1], v74, *(&v74 + 1));
      sub_1B03B1198(&v42);
      sub_1B03B1198(v43);
      sub_1B03B1198(&v72);
      v27 = v26;
      goto LABEL_30;
    }

    sub_1B03B1198(v43);
    goto LABEL_32;
  }

  if (*(&v74 + 1))
  {
LABEL_32:
    sub_1B06FF6F0(&v72);
    v27 = 0;
    goto LABEL_30;
  }

  sub_1B03B1198(&v72);
  v27 = 1;
LABEL_30:

  if (v27)
  {
    goto LABEL_78;
  }

  sub_1B03B1198(&v87);
  sub_1B070B280(&v87, &v71);
  v24 = sub_1B0E44838();
  v25 = v4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v70 = v87;
  v67 = v24;
  v68 = v25;
  sub_1B070B280(&v70, &v69);
  if (v68)
  {
    sub_1B070B280(&v67, v45);
    if (*(&v69 + 1))
    {
      v44 = v69;
      v22 = MEMORY[0x1B2726DE0](v45[0], v45[1], v69, *(&v69 + 1));
      sub_1B03B1198(&v44);
      sub_1B03B1198(v45);
      sub_1B03B1198(&v67);
      v23 = v22;
      goto LABEL_41;
    }

    sub_1B03B1198(v45);
    goto LABEL_43;
  }

  if (*(&v69 + 1))
  {
LABEL_43:
    sub_1B06FF6F0(&v67);
    v23 = 0;
    goto LABEL_41;
  }

  sub_1B03B1198(&v67);
  v23 = 1;
LABEL_41:

  if (v23)
  {
    goto LABEL_78;
  }

  sub_1B03B1198(&v87);
  sub_1B070B280(&v87, &v66);
  v20 = sub_1B0E44838();
  v21 = v5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v65 = v87;
  v62 = v20;
  v63 = v21;
  sub_1B070B280(&v65, &v64);
  if (v63)
  {
    sub_1B070B280(&v62, v47);
    if (*(&v64 + 1))
    {
      v46 = v64;
      v18 = MEMORY[0x1B2726DE0](v47[0], v47[1], v64, *(&v64 + 1));
      sub_1B03B1198(&v46);
      sub_1B03B1198(v47);
      sub_1B03B1198(&v62);
      v19 = v18;
      goto LABEL_52;
    }

    sub_1B03B1198(v47);
    goto LABEL_54;
  }

  if (*(&v64 + 1))
  {
LABEL_54:
    sub_1B06FF6F0(&v62);
    v19 = 0;
    goto LABEL_52;
  }

  sub_1B03B1198(&v62);
  v19 = 1;
LABEL_52:

  if (v19)
  {
    goto LABEL_78;
  }

  sub_1B03B1198(&v87);
  sub_1B070B280(&v87, &v61);
  v16 = sub_1B0E44838();
  v17 = v6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v60 = v87;
  v57 = v16;
  v58 = v17;
  sub_1B070B280(&v60, &v59);
  if (v58)
  {
    sub_1B070B280(&v57, v49);
    if (*(&v59 + 1))
    {
      v48 = v59;
      v14 = MEMORY[0x1B2726DE0](v49[0], v49[1], v59, *(&v59 + 1));
      sub_1B03B1198(&v48);
      sub_1B03B1198(v49);
      sub_1B03B1198(&v57);
      v15 = v14;
      goto LABEL_63;
    }

    sub_1B03B1198(v49);
    goto LABEL_65;
  }

  if (*(&v59 + 1))
  {
LABEL_65:
    sub_1B06FF6F0(&v57);
    v15 = 0;
    goto LABEL_63;
  }

  sub_1B03B1198(&v57);
  v15 = 1;
LABEL_63:

  if (v15)
  {
    goto LABEL_78;
  }

  sub_1B03B1198(&v87);
  sub_1B070B280(&v87, &v56);
  v12 = sub_1B0E44838();
  v13 = v7;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v55 = v87;
  v52 = v12;
  v53 = v13;
  sub_1B070B280(&v55, &v54);
  if (v53)
  {
    sub_1B070B280(&v52, v51);
    if (*(&v54 + 1))
    {
      v50 = v54;
      v10 = MEMORY[0x1B2726DE0](v51[0], v51[1], v54, *(&v54 + 1));
      sub_1B03B1198(&v50);
      sub_1B03B1198(v51);
      sub_1B03B1198(&v52);
      v11 = v10;
      goto LABEL_74;
    }

    sub_1B03B1198(v51);
    goto LABEL_76;
  }

  if (*(&v54 + 1))
  {
LABEL_76:
    sub_1B06FF6F0(&v52);
    v11 = 0;
    goto LABEL_74;
  }

  sub_1B03B1198(&v52);
  v11 = 1;
LABEL_74:

  if ((v11 & 1) == 0)
  {
    sub_1B03B1198(&v87);
LABEL_79:
    v9 = 0;
    return v9 & 1;
  }

LABEL_78:
  sub_1B03B1198(&v87);
  v9 = 1;
  return v9 & 1;
}

uint64_t sub_1B0A699CC(void *__src)
{
  v61[2] = __src;
  memcpy(__dst, __src, sizeof(__dst));
  if (__dst[32] != 1)
  {
    goto LABEL_57;
  }

  v63 = *__dst;
  sub_1B070B280(&v63, v61);
  v26 = sub_1B0E44838();
  v27 = v1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v60 = v63;
  v58[0] = v26;
  v58[1] = v27;
  sub_1B070B280(&v60, &v59);
  if (v27)
  {
    sub_1B070B280(v58, v29);
    if (*(&v59 + 1))
    {
      v28 = v59;
      v24 = MEMORY[0x1B2726DE0](v29[0], v29[1], v59, *(&v59 + 1));
      sub_1B03B1198(&v28);
      sub_1B03B1198(v29);
      sub_1B03B1198(v58);
      v25 = v24;
      goto LABEL_8;
    }

    sub_1B03B1198(v29);
    goto LABEL_10;
  }

  if (*(&v59 + 1))
  {
LABEL_10:
    sub_1B06FF6F0(v58);
    v25 = 0;
    goto LABEL_8;
  }

  sub_1B03B1198(v58);
  v25 = 1;
LABEL_8:

  if (v25)
  {
    goto LABEL_56;
  }

  sub_1B03B1198(&v63);
  sub_1B070B280(&v63, &v57);
  v22 = sub_1B0E44838();
  v23 = v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v56 = v63;
  v53 = v22;
  v54 = v23;
  sub_1B070B280(&v56, &v55);
  if (v54)
  {
    sub_1B070B280(&v53, v31);
    if (*(&v55 + 1))
    {
      v30 = v55;
      v20 = MEMORY[0x1B2726DE0](v31[0], v31[1], v55, *(&v55 + 1));
      sub_1B03B1198(&v30);
      sub_1B03B1198(v31);
      sub_1B03B1198(&v53);
      v21 = v20;
      goto LABEL_19;
    }

    sub_1B03B1198(v31);
    goto LABEL_21;
  }

  if (*(&v55 + 1))
  {
LABEL_21:
    sub_1B06FF6F0(&v53);
    v21 = 0;
    goto LABEL_19;
  }

  sub_1B03B1198(&v53);
  v21 = 1;
LABEL_19:

  if (v21)
  {
    goto LABEL_56;
  }

  sub_1B03B1198(&v63);
  sub_1B070B280(&v63, &v52);
  v18 = sub_1B0E44838();
  v19 = v3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v51 = v63;
  v48 = v18;
  v49 = v19;
  sub_1B070B280(&v51, &v50);
  if (v49)
  {
    sub_1B070B280(&v48, v33);
    if (*(&v50 + 1))
    {
      v32 = v50;
      v16 = MEMORY[0x1B2726DE0](v33[0], v33[1], v50, *(&v50 + 1));
      sub_1B03B1198(&v32);
      sub_1B03B1198(v33);
      sub_1B03B1198(&v48);
      v17 = v16;
      goto LABEL_30;
    }

    sub_1B03B1198(v33);
    goto LABEL_32;
  }

  if (*(&v50 + 1))
  {
LABEL_32:
    sub_1B06FF6F0(&v48);
    v17 = 0;
    goto LABEL_30;
  }

  sub_1B03B1198(&v48);
  v17 = 1;
LABEL_30:

  if (v17)
  {
    goto LABEL_56;
  }

  sub_1B03B1198(&v63);
  sub_1B070B280(&v63, &v47);
  v14 = sub_1B0E44838();
  v15 = v4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v46 = v63;
  v43 = v14;
  v44 = v15;
  sub_1B070B280(&v46, &v45);
  if (v44)
  {
    sub_1B070B280(&v43, v35);
    if (*(&v45 + 1))
    {
      v34 = v45;
      v12 = MEMORY[0x1B2726DE0](v35[0], v35[1], v45, *(&v45 + 1));
      sub_1B03B1198(&v34);
      sub_1B03B1198(v35);
      sub_1B03B1198(&v43);
      v13 = v12;
      goto LABEL_41;
    }

    sub_1B03B1198(v35);
    goto LABEL_43;
  }

  if (*(&v45 + 1))
  {
LABEL_43:
    sub_1B06FF6F0(&v43);
    v13 = 0;
    goto LABEL_41;
  }

  sub_1B03B1198(&v43);
  v13 = 1;
LABEL_41:

  if (v13)
  {
    goto LABEL_56;
  }

  sub_1B03B1198(&v63);
  sub_1B070B280(&v63, &v42);
  v10 = sub_1B0E44838();
  v11 = v5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v41 = v63;
  v38 = v10;
  v39 = v11;
  sub_1B070B280(&v41, &v40);
  if (v39)
  {
    sub_1B070B280(&v38, v37);
    if (*(&v40 + 1))
    {
      v36 = v40;
      v8 = MEMORY[0x1B2726DE0](v37[0], v37[1], v40, *(&v40 + 1));
      sub_1B03B1198(&v36);
      sub_1B03B1198(v37);
      sub_1B03B1198(&v38);
      v9 = v8;
      goto LABEL_52;
    }

    sub_1B03B1198(v37);
    goto LABEL_54;
  }

  if (*(&v40 + 1))
  {
LABEL_54:
    sub_1B06FF6F0(&v38);
    v9 = 0;
    goto LABEL_52;
  }

  sub_1B03B1198(&v38);
  v9 = 1;
LABEL_52:

  if ((v9 & 1) == 0)
  {
    sub_1B03B1198(&v63);
LABEL_57:
    v7 = 0;
    return v7 & 1;
  }

LABEL_56:
  sub_1B03B1198(&v63);
  v7 = 1;
  return v7 & 1;
}

uint64_t sub_1B0A6A0F0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  sub_1B07ACBF8(*a1, v4, v5, v6, v7);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  v10 = *(a1 + 40);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *(a2 + 40) = v10;
  return result;
}

uint64_t sub_1B0A6A18C(uint64_t a1)
{
  sub_1B07ACE18(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));

  return a1;
}

uint64_t sub_1B0A6A1EC(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xE9)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 22) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 233;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 23;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1B0A6A354(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xE9)
  {
    v5 = ((a3 + 22) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xE9)
  {
    v4 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 22;
    }
  }

  return result;
}

unint64_t sub_1B0A6A57C()
{
  v2 = qword_1EB6E3C00;
  if (!qword_1EB6E3C00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3C00);
    return WitnessTable;
  }

  return v2;
}

id sub_1B0A6A5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = sub_1B0E44AC8();
  if (a3)
  {
    type metadata accessor for Key(0);
    sub_1B0694878();
    v5 = sub_1B0E44598();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v4 = [v7 initWithString:v9 attributes:?];
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](v9);

  return v4;
}

uint64_t sub_1B0A6A714(uint64_t a1, uint64_t *a2)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = *a2;
  v7 = a2[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11 = sub_1B0A6B184(a1, v6, v7);
  v9 = v2;
  v10 = v3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12 = v11;
  v13 = v9;
  v14 = v10;
  sub_1B08F533C(a2);
  sub_1B039E440(&v12);
  return v11;
}

uint64_t sub_1B0A6A7C8(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = 0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = a1;
  v6 = a2;

  sub_1B03B1198(&v5);
  return a1;
}

uint64_t sub_1B0A6A84C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  v16 = v3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v15[0] = a1;
  sub_1B07167A8();
  sub_1B0E44778();
  sub_1B039E440(v15);
  if (v15[2])
  {
    return v15[1];
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11 = a2;
  v12 = a3;
  if (a3)
  {
    v13 = v11;
    v14 = v12;
  }

  else
  {
    v13 = sub_1B0A6AB98();
    v14 = v4;
  }

  v6 = v13;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3C08, &qword_1B0EA3F28);
  sub_1B0E44788();
  return v6;
}

uint64_t sub_1B0A6AAC4(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3C10, &qword_1B0EA3F30);
  sub_1B0E46A48();
  sub_1B07167A8();
  v5 = sub_1B0E445D8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = v5;
  PCG32Random.init(state:inc:)();
  v7 = v2;
  v8 = v3;
  sub_1B039E440(&v6);
  return v5;
}

uint64_t sub_1B0A6AB98()
{
  v13 = 0;
  v10 = sub_1B0E43158();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v9 = &v4 - v5;
  v13 = v0;
  v1 = sub_1B0714728();
  sub_1B0A6AC9C(v6 + 8, &type metadata for PCG32Random, v1);
  v11 = sub_1B0E43128();
  v12 = v2;
  (*(v7 + 8))(v9, v10);
  return sub_1B0A6A7C8(v11, v12);
}

uint64_t sub_1B0A6AC9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = a2;
  v12 = a1;
  v11 = 0uLL;
  v7 = a2;
  v8 = a3;
  v9 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3C18, &qword_1B0EA3F38);
  sub_1B03B0BBC(&v11, sub_1B0A6BD38, v6, v3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v5, v5);
  v10 = v11;
  return sub_1B0E43138();
}

void *sub_1B0A6AE24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v30 = 0;
  memset(__b, 0, sizeof(__b));
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v39, __dst, sizeof(v39));
  v30 = a1;
  memcpy(v32, __src, sizeof(v32));
  v18 = sub_1B08C4EF0(v32);
  if (!v18)
  {
    v2 = sub_1B08C4F00(v32);
    v33 = *v2;
    v34 = *(v2 + 16);
LABEL_6:
    sub_1B0A6BD78(__src, v19);
    memcpy(v38, v39, sizeof(v38));
    return memcpy(a2, v38, 0x80uLL);
  }

  if (v18 == 1)
  {
    v35 = *sub_1B08C4F00(v32);
    goto LABEL_6;
  }

  v3 = sub_1B08C4F00(v32);
  memcpy(v36, v3, sizeof(v36));
  sub_1B08C4F88(v36, v28);
  v37 = v36[5];
  sub_1B070B280(&v37, &v27);
  memcpy(__b, v36, sizeof(__b));
  v26 = v37;
  v14 = v37.n128_u64[1] == 0;
  sub_1B03B1198(&v26);
  if (v14)
  {
    v10 = __b[0];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v11 = __b[10];
    v12 = __b[11];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v23[0] = v11;
    v23[1] = v12;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3850, &qword_1B0E9B600);
    sub_1B03F1A20(sub_1B0A654A4, 0, v4, MEMORY[0x1E69E73E0], &unk_1F270F528, v13, v24);
    sub_1B03B1198(v23);
    v8 = sub_1B0A6A84C(v10, v24[0], v24[1]);
    v9 = v5;

    __b[10] = sub_1B0A6A7C8(v8, v9);
    __b[11] = v6;

    memcpy(v21, __b, sizeof(v21));
    sub_1B08C4F88(v21, v20);
    memcpy(v22, v21, sizeof(v22));
    sub_1B0A6BFC0(v22);
    sub_1B08C5168(__b);
    memcpy(v38, v22, sizeof(v38));
  }

  else
  {
    sub_1B0A6BD78(__src, v25);
    sub_1B08C5168(__b);
    memcpy(v38, v39, sizeof(v38));
  }

  return memcpy(a2, v38, 0x80uLL);
}

uint64_t sub_1B0A6B184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v22 = a2;
  v30 = a1;
  v19 = 0;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v36 = 0;
  v35 = 0;
  sub_1B0E444E8();
  MEMORY[0x1EEE9AC00](0);
  v20 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1B0E44558();
  v24 = *(v23 - 8);
  v25 = v24;
  v26 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v28 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = &v13 - v28;
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v13 - v28;
  v29 = &v13 - v28;
  v44 = &v13 - v28;
  v40 = v5;
  v38 = v6;
  v39 = v7;
  sub_1B0E44548();
  v37 = v30;
  v34 = v31;
  sub_1B039C030(&v37, sub_1B0A6C050, v33, MEMORY[0x1E69E7360], MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v8, MEMORY[0x1E69E7CA8]);
  v32 = 0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v35 = v22;
  v36 = v21;
  v18 = &v13;
  MEMORY[0x1EEE9AC00](&v13);
  *(&v13 - 2) = v9;
  sub_1B0A6B5B4(sub_1B0A6C07C, (&v13 - 4), MEMORY[0x1E69E7CA8] + 8);
  (*(v25 + 16))(v27, v29, v23);
  sub_1B0E44538();
  v14 = *(v25 + 8);
  v13 = v25 + 8;
  v14(v27, v23);
  v17 = sub_1B0A6B7BC(v20);
  v15 = v10;
  v16 = v11;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v41 = v17;
  v42 = v15;
  v43 = v16;
  sub_1B03B1198(&v35);
  v14(v29, v23);

  sub_1B039E440(&v41);
  return v17;
}

uint64_t sub_1B0A6B5B4(uint64_t (*a1)(void *, unint64_t), uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v19 = *(v3 + 8);
  if ((v19 & 0x1000000000000000) != 0)
  {
    v10 = *v15;
    v11 = v15[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03B1198(v15);
    v12 = sub_1B0A6C2B0(v10, v11);
    v13 = v4;

    *v15 = v12;
    v15[1] = v13;
  }

  v9 = *v15;
  v18 = v15[1];
  if ((v18 & 0x2000000000000000) != 0)
  {
    v17[0] = v9;
    v17[1] = v18 & (-bswap64(0xFFuLL) - 1);
    return a1(v17, (v18 & 0xF00000000000000uLL) >> 56);
  }

  if ((v9 & 0x1000000000000000) != 0)
  {
    if ((v18 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v7 = ((v18 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v9 & 0xFFFFFFFFFFFFLL;
      goto LABEL_10;
    }

    __break(1u);
  }

  v7 = sub_1B0E46368();
  v8 = v6;
LABEL_10:
  result = a1(v7, v8);
  if (!v16)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1B0A6B7BC(uint64_t a1)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v15 = a1;
  v13 = 0;
  v14 = 0;
  v12 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3C20, &qword_1B0EA3F40);
  sub_1B03B0BBC(&v13, sub_1B0A6C0A4, v11, v1, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v10, v10);
  v8 = sub_1B0A6AAC4(v13, v14);
  v6 = v2;
  v7 = v3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v16 = v8;
  v17 = v6;
  v18 = v7;
  v4 = sub_1B0E444E8();
  (*(*(v4 - 8) + 8))(a1);
  sub_1B039E440(&v16);
  return v8;
}

uint64_t sub_1B0A6B91C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v14 = a1;
  v15 = a2;
  v13 = a3;
  v11 = a1;
  v12 = a2;
  v4 = sub_1B0E444E8();
  result = sub_1B039C030(a3, sub_1B0A6C18C, v10, v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v8, a4);
  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0A6B9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_1B0E450E8() < 0)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  sub_1B0E45128();
  sub_1B0E45108();
  return sub_1B0E45E48();
}

uint64_t sub_1B0A6BB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[8] = a5;
  v10[9] = a4;
  v10[7] = a3;
  v11 = a2;
  v13 = a1;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v21[4] = a4;
  v21[2] = a1;
  v21[3] = a2;
  v21[1] = a3;
  v21[0] = sub_1B0E447A8();
  v16 = v13;
  v17 = v11;
  sub_1B098F41C(v21, sub_1B0A6D938, v15, MEMORY[0x1E69E76D8], MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v5, MEMORY[0x1E69E7CA8]);
  v14 = v12;
  if (v12)
  {
    __break(1u);
    result = 0;
    __break(1u);
  }

  else
  {
    v10[4] = 0;
    v20 = sub_1B0E447A8();
    v10[5] = v10;
    MEMORY[0x1EEE9AC00](v10);
    v9[2] = v13;
    v9[3] = v6;
    sub_1B098F41C(&v20, sub_1B0A6D968, v9, MEMORY[0x1E69E76D8], MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v7, MEMORY[0x1E69E7CA8]);
    v10[6] = 0;
    v10[3] = 0;
    v10[1] = 9;
    v19 = sub_1B0E45EA8() & 0x3F | 0x80;
    sub_1B0E45EB8();
    v10[2] = 6;
    v18 = sub_1B0E45EA8() & 0xF | 0x40;
    return sub_1B0E45EB8();
  }

  return result;
}

uint64_t *sub_1B0A6BD78(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[8];
  v12 = a1[9];
  v13 = a1[10];
  v14 = a1[11];
  v15 = a1[12];
  v16 = a1[13];
  v17 = a1[14];
  v18 = a1[15];
  sub_1B0A6BEC8(*a1, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, SWORD2(v15), SBYTE6(v15), HIBYTE(v15));
  result = a2;
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v9;
  a2[7] = v10;
  a2[8] = v11;
  a2[9] = v12;
  a2[10] = v13;
  a2[11] = v14;
  a2[12] = v15;
  a2[13] = v16;
  a2[14] = v17;
  a2[15] = v18;
  return result;
}

double sub_1B0A6BEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, unsigned __int8 a16)
{
  v23 = a16 >> 6;
  if (!(a16 >> 6) || v23 == 1)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else if (v23 == 2)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B07ACBF8(a2, a3, a4, a5, a6);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B08C50F0(a8, a9);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

void *sub_1B0A6BFC0(void *result)
{
  v1 = result[1];
  v2 = result[2];
  v3 = result[3];
  v4 = result[4];
  v5 = result[6];
  v6 = result[7];
  v7 = result[8];
  v8 = result[9];
  v9 = result[10];
  v10 = result[11];
  v11 = result[13];
  v12 = result[14];
  v13 = result[15];
  v14 = result[5] & 0xFLL;
  v15 = result[12] & 7 | 0x8000000000000000;
  *result = *result;
  result[1] = v1;
  result[2] = v2;
  result[3] = v3;
  result[4] = v4;
  result[5] = v14;
  result[6] = v5;
  result[7] = v6;
  result[8] = v7;
  result[9] = v8;
  result[10] = v9;
  result[11] = v10;
  result[12] = v15;
  result[13] = v11;
  result[14] = v12;
  result[15] = v13;
  return result;
}

unint64_t sub_1B0A6C110()
{
  v2 = qword_1EB6E3C28;
  if (!qword_1EB6E3C28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3C28);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A6C1BC(uint64_t a1, uint64_t a2)
{
  sub_1B0E45E98();
  sub_1B0E45E88();
  return sub_1B0E45E48();
}

uint64_t sub_1B0A6C234(uint64_t a1, uint64_t a2)
{
  sub_1B0E45E98();
  sub_1B0E45E88();
  return sub_1B0E45E48();
}

uint64_t sub_1B0A6C2B0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0A6C314(sub_1B08AC32C, 0, a1, a2);
  v7 = sub_1B0A6C3E4(v2, v3, v4, v5);

  return v7;
}

uint64_t sub_1B0A6C3E4(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[2] = a4;
  if ((a4 & 0x1000000000000000) != 0)
  {
    sub_1B0A6C7C8(a1, a2, a3, a4);
    sub_1B0A6CD94(v15);
    v11 = v15[0];

    return v11;
  }

  v9 = a1 >> 16;
  v10 = a2 >> 16;
  if ((a4 & 0x2000000000000000) != 0)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      if (v10 <= ((a4 & 0xF00000000000000uLL) >> 56))
      {
        if (((v10 - v9) & 0x8000000000000000) == 0)
        {
          return sub_1B0E44C78();
        }

        sub_1B0E466C8();
        __break(1u);
      }

      sub_1B0E466C8();
      __break(1u);
    }

    sub_1B0E466C8();
    __break(1u);
  }

  if ((a3 & 0x1000000000000000) != 0)
  {
    if ((a4 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v6 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v7 = a3 & 0xFFFFFFFFFFFFLL;
      goto LABEL_16;
    }

    __break(1u);
  }

  v6 = sub_1B0E46368();
  v7 = v4;
LABEL_16:
  if ((v9 & 0x8000000000000000) == 0)
  {
    if (v7 >= v10)
    {
      sub_1B0A6CDCC(v9, v10, v6, v7);
      return sub_1B0E44C78();
    }

    sub_1B0E466C8();
    __break(1u);
  }

  result = sub_1B0E466C8();
  __break(1u);
  return result;
}

void *sub_1B0A6C7C8(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = sub_1B0E45E08();
  if (!v26)
  {
    return sub_1B0A188BC();
  }

  v21 = sub_1B03B7A3C(v26, 0);

  if (v26 < 0)
  {
    sub_1B0E466C8();
    __break(1u);
    return sub_1B0A188BC();
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v19 = sub_1B0A6CFC0(&v27, v21 + 32, v26, a1, a2, a3, a4);
  v20 = v31;
  if (v31 >> 14 != v28 >> 14)
  {
    v15 = v27;
    v16 = v28;
    v17 = v29;
    v18 = v30;
    v14 = (v30 & 0x1000000000000000) == 0 || (v29 & 0x800000000000000) != 0;
    v13 = v31 & 0xC;
    if (v13 == 4 << v14)
    {
      v12 = sub_1B0A6D6C4(v31, v29, v30);
    }

    else
    {
      v12 = v31;
    }

    if (v12 >> 14 < v15 >> 14 || v12 >> 14 >= v16 >> 14)
    {
LABEL_35:
      sub_1B0E465A8();
      __break(1u);
      goto LABEL_36;
    }

    if ((v18 & 0x1000000000000000) != 0)
    {
      sub_1B0E44E08();
    }

    else if ((v18 & 0x2000000000000000) == 0)
    {
      if ((v17 & 0x1000000000000000) != 0)
      {
        if ((v18 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
        {
          goto LABEL_20;
        }

        __break(1u);
      }

      if (!sub_1B0E46368())
      {
        __break(1u);
      }
    }

LABEL_20:
    v10 = v29;
    v11 = v30;
    v9 = (v30 & 0x1000000000000000) == 0 || (v29 & 0x800000000000000) != 0;
    if (v13 == 4 << v9)
    {
      v8 = sub_1B0A6D6C4(v20, v29, v30);
    }

    else
    {
      v8 = v20;
    }

    if ((v11 & 0x1000000000000000) != 0)
    {
      if ((v11 & 0x2000000000000000) != 0)
      {
        v7 = (v11 & 0xF00000000000000uLL) >> 56;
      }

      else
      {
        v7 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (v7 <= (v8 >> 16))
      {
        sub_1B0E465A8();
        __break(1u);
      }

      v6 = sub_1B0E44DD8();
    }

    else
    {
      v6 = (((v8 >> 16) + 1) << 16) | 4;
    }

    v31 = v6;
    sub_1B0E466C8();
    __break(1u);
    goto LABEL_35;
  }

LABEL_36:
  if (v19 != v26)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  sub_1B03F5C58(&v27);
  return v21;
}

uint64_t sub_1B0A6CD94@<X0>(uint64_t *a3@<X8>)
{
  result = sub_1B0E44C78();
  *a3 = result;
  a3[1] = v4;
  return result;
}

uint64_t sub_1B0A6CDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 < 0 || a4 < a2)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v5 = a3 + a1;
  }

  else
  {
    v5 = 0;
  }

  if (a2 - a1 < 0)
  {
    sub_1B0E466C8();
    __break(1u);
LABEL_12:
    result = sub_1B0E466C8();
    __break(1u);
    return result;
  }

  if (a2 != a1 && !v5)
  {
    sub_1B0E466C8();
    __break(1u);
  }

  return v5;
}

unint64_t *sub_1B0A6CFC0(unint64_t *result, _BYTE *a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = result;
  if (!a2)
  {
    *result = a4;
    result[1] = a5;
    result[2] = a6;
    result[3] = a7;
    result[4] = a4;
    return 0;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (!a3)
    {
LABEL_55:
      v8 = a4;
LABEL_56:
      *v24 = a4;
      v24[1] = a5;
      v24[2] = a6;
      v24[3] = a7;
      v24[4] = v8;
      return a3;
    }

    v20 = a2;
    v21 = 0;
    for (i = a4; ; i = v9)
    {
      if (v21 < 0 || v21 >= a3)
      {
LABEL_54:
        sub_1B0E466C8();
        __break(1u);
        goto LABEL_55;
      }

      if (a3 < 0)
      {
        sub_1B0E465A8();
        __break(1u);
        goto LABEL_54;
      }

      if (__OFADD__(v21, 1))
      {
        goto LABEL_59;
      }

      if (a5 >> 14 == i >> 14)
      {
        goto LABEL_52;
      }

      v30[7] = a7;
      v19 = (a7 & 0x1000000000000000) == 0 || (a6 & 0x800000000000000) != 0;
      v18 = i & 0xC;
      if (v18 == 4 << v19)
      {
        v17 = sub_1B0A6D6C4(i, a6, a7);
      }

      else
      {
        v17 = i;
      }

      if (v17 >> 14 < a4 >> 14 || v17 >> 14 >= a5 >> 14)
      {
        sub_1B0E465A8();
        __break(1u);
LABEL_52:
        *v24 = a4;
        v24[1] = a5;
        v24[2] = a6;
        v24[3] = a7;
        v24[4] = i;
        return v21;
      }

      v30[6] = a7;
      if ((a7 & 0x1000000000000000) != 0)
      {
        v16 = sub_1B0E44E08();
        goto LABEL_34;
      }

      v30[2] = a7;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v30[0] = a6;
        v30[1] = a7 & (-bswap64(0xFFuLL) - 1);
        v16 = *(v30 + (v17 >> 16));
        goto LABEL_34;
      }

      if ((a6 & 0x1000000000000000) == 0)
      {
        goto LABEL_30;
      }

      if ((a7 & 0xFFFFFFFFFFFFFFFLL) == 0xFFFFFFFFFFFFFFE0)
      {
        break;
      }

      v14 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v15 = v17 >> 16;
LABEL_33:
      v16 = *(v14 + v15);
LABEL_34:
      v30[5] = a7;
      v12 = (a7 & 0x1000000000000000) == 0 || (a6 & 0x800000000000000) != 0;
      if (v18 == 4 << v12)
      {
        result = sub_1B0A6D6C4(i, a6, a7);
        v11 = result;
      }

      else
      {
        result = i;
        v11 = i;
      }

      v30[4] = a7;
      if ((a7 & 0x1000000000000000) != 0)
      {
        v30[3] = a7;
        if ((a7 & 0x2000000000000000) != 0)
        {
          v10 = (a7 & 0xF00000000000000uLL) >> 56;
        }

        else
        {
          v10 = a6 & 0xFFFFFFFFFFFFLL;
        }

        if (v10 <= (v11 >> 16))
        {
          sub_1B0E465A8();
          __break(1u);
        }

        result = sub_1B0E44DD8();
        v9 = result;
      }

      else
      {
        v9 = ((((v11 >> 16) + 1) << 16) | 4);
      }

      *v20 = v16;
      if (v21 + 1 == a3)
      {
        v8 = v9;
        goto LABEL_56;
      }

      ++v20;
      ++v21;
    }

    __break(1u);
LABEL_30:
    v13 = sub_1B0E46368();
    if (!v13)
    {
      __break(1u);
    }

    v14 = v13;
    v15 = v17 >> 16;
    goto LABEL_33;
  }

  result = sub_1B0E466C8();
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

unint64_t sub_1B0A6D6C4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = MEMORY[0x1B2726F00](15, v10, a2, a3);
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    sub_1B0E465A8();
    __break(1u);
  }

  v5 = sub_1B0E44E38();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

uint64_t sub_1B0A6D998(uint64_t a1)
{
  v4 = 0;
  v5 = 0;
  v4 = sub_1B0E42FE8();
  v5 = v1;
  v3 = v4;
  sub_1B03B2000(v4, v1);
  sub_1B075D3E8(&v4);
  return v3;
}

uint64_t sub_1B0A6D9F4(void *__src)
{
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v25 = 0;
  v26 = 0;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v19 = 0;
  v20 = 0;
  v32 = __src;
  memcpy(__dst, __src, sizeof(__dst));
  v17 = sub_1B08C4EF0(__dst);
  if (v17)
  {
    if (v17 == 1)
    {
      v5 = sub_1B08C4F00(__dst);
      v11 = *v5;
      v12 = v5[1];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v25 = v11;
      v26 = v12;
      v24[0] = sub_1B0E44CE8();
      v24[1] = v6;
      sub_1B0A6E80C();
      sub_1B0E42F98();
      sub_1B03B1198(v24);
    }

    else
    {
      v7 = sub_1B08C4F00(__dst);
      memcpy(v34, v7, sizeof(v34));
      sub_1B08C4F88(v34, v30);
      v8 = sub_1B0A6DDE0(v34);
      if (v9)
      {
        v28 = v8;
        v29 = v9;
        v27[0] = sub_1B0E44CE8();
        v27[1] = v10;
        sub_1B0A6E80C();
        sub_1B0E42F98();
        sub_1B03B1198(v27);

        return sub_1B08C5168(v34);
      }

      else
      {
        return sub_1B08C5168(v34);
      }
    }
  }

  else
  {
    v1 = sub_1B08C4F00(__dst);
    v13 = *v1;
    v14 = v1[1];
    v15 = *(v1 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v22 = v13;
    v23 = v14;
    v21 = v15;
    v16 = sub_1B0A6DC9C(v13, v14, v15);
    if (v2)
    {
      v19 = v16;
      v20 = v2;
      v18[0] = sub_1B0E44CE8();
      v18[1] = v3;
      sub_1B0A6E80C();
      sub_1B0E42F98();
      sub_1B03B1198(v18);
    }

    else
    {
    }
  }
}

uint64_t sub_1B0A6DC9C(uint64_t a1, uint64_t a2, char a3)
{
  v8 = objc_opt_self();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9 = sub_1B0E44AC8();

  v7 = sub_1B0A6F34C(a3);
  v10 = [v8 createHTMLFromText:v9 delSp:v7 flowed:sub_1B0A6F3B0(a3)];
  MEMORY[0x1E69E5920](v9);
  if (!v10)
  {
    return 0;
  }

  v4 = sub_1B0E44AD8();
  MEMORY[0x1E69E5920](v10);
  return v4;
}

uint64_t sub_1B0A6DDE0(void *a1)
{
  v96 = v126;
  v90 = a1;
  v122 = 0;
  v121 = 0;
  v118 = 0;
  v119 = 0;
  v114 = 0;
  v115 = 0;
  v112 = 0;
  v87 = 0;
  v72 = sub_1B0E42C98();
  v73 = *(v72 - 8);
  v74 = v72 - 8;
  v75 = (*(v73 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v76 = &v28 - v75;
  v77 = sub_1B0E42C78();
  v78 = *(v77 - 8);
  v79 = v77 - 8;
  v80 = (*(v78 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v87);
  v81 = &v28 - v80;
  v82 = sub_1B0E42CA8();
  v83 = *(v82 - 8);
  v84 = v82 - 8;
  v85 = (*(v83 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v82);
  v86 = &v28 - v85;
  v88 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v28 - v88;
  v91 = sub_1B0E42E68();
  v92 = *(v91 - 8);
  v93 = v91 - 8;
  v94 = (*(v92 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v90);
  v95 = &v28 - v94;
  v122 = &v28 - v94;
  v121 = v1;
  *v2 = *(v1 + 80);
  sub_1B070B280(v126, &v120);
  v96[1] = *v96;
  if (!v128)
  {
    goto LABEL_12;
  }

  v70 = v127;
  v71 = v128;
  v118 = v127;
  v119 = v128;
  sub_1B0A6E948(v127, v128, v89);
  if ((*(v92 + 48))(v89, 1, v91) == 1)
  {
    sub_1B06E3800(v89);

LABEL_12:
    v61 = 0;
    v62 = 0;
    return v61;
  }

  (*(v92 + 32))(v95, v89, v91);
  v63 = __dst;
  memcpy(__dst, v90 + 1, sizeof(__dst));
  sub_1B0A6A0F0(__dst, v117);
  v67 = __src;
  memcpy(__src, v63, 0x21uLL);
  sub_1B07B4718(__src, &v116);
  sub_1B0A6A18C(v63);
  v64 = v90[7];
  v65 = v90[8];
  v66 = v90[9];
  sub_1B08C50F0(v64, v65);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v68 = ContentDisposition.filename.getter(v64, v65, v66);
  v69 = v3;
  v114 = v68;
  v115 = v3;
  sub_1B08C512C(v64, v65);

  sub_1B07B4718(v67, &v113);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v112 = sub_1B0A658C8(v67, v68, v69);
  if (sub_1B0A63DB8(v112))
  {
    v4 = sub_1B0E46A28();
    v56 = &v99;
    v99 = v4;
    v100 = v5;
    v54 = 1;
    v6 = sub_1B0E44838();
    v52 = v7;
    MEMORY[0x1B2728B30](v6);

    sub_1B092A830();
    sub_1B0E469F8();
    v8 = sub_1B0E44838();
    v53 = v9;
    MEMORY[0x1B2728B30](v8);

    v97 = v70;
    v98 = v71;
    sub_1B0E46A08();
    v10 = sub_1B0E44838();
    v55 = v11;
    MEMORY[0x1B2728B30](v10);

    v58 = v99;
    v57 = v100;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03B1198(v56);
    v59 = sub_1B0E44C88();
    v60 = v12;

    sub_1B07AD0E0(__src);
    (*(v92 + 8))(v95, v91);

    v61 = v59;
    v62 = v60;
  }

  else
  {
    v13 = sub_1B0E46A28();
    v49 = &v110;
    v110 = v13;
    v111 = v14;
    v50 = 1;
    v15 = sub_1B0E44838();
    v40 = v16;
    MEMORY[0x1B2728B30](v15);

    v123 = v90[13];
    v109[2] = v123;
    (*(v78 + 104))(v81, *MEMORY[0x1E69689E0], v77);
    sub_1B0A6EB14();
    has_malloc_size = _swift_stdlib_has_malloc_size();
    sub_1B0394868();
    sub_1B0E42858();
    (*(v73 + 8))(v76, v72);
    (*(v78 + 8))(v81, v77);
    v42 = sub_1B03948EC();
    v43 = sub_1B0A6F414();
    sub_1B043B1E8();
    sub_1B0E45F68();
    (*(v83 + 8))(v86, v82);
    v44 = v109;
    v109[0] = v109[3];
    v109[1] = v109[4];
    v46 = MEMORY[0x1E69E6158];
    v47 = MEMORY[0x1E69E61C8];
    v48 = MEMORY[0x1E69E61C0];
    sub_1B0E46A08();
    sub_1B03B1198(v44);
    v17 = sub_1B0E44838();
    v45 = v18;
    MEMORY[0x1B2728B30](v17);

    v107 = v70;
    v108 = v71;
    sub_1B0E46A08();
    v19 = sub_1B0E44838();
    v51 = v20;
    MEMORY[0x1B2728B30](v19);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v103 = v68;
    v104 = v69;
    if (v69)
    {
      v105 = v103;
      v106 = v104;
    }

    else
    {
      v105 = sub_1B0E44838();
      v106 = v21;
      if (v104)
      {
        sub_1B03B1198(&v103);
      }
    }

    v29 = v102;
    v102[0] = v105;
    v102[1] = v106;
    v34 = &v110;
    sub_1B0E46A08();
    sub_1B03B1198(v29);
    v32 = 1;
    v22 = sub_1B0E44838();
    v30 = v23;
    MEMORY[0x1B2728B30](v22);

    v31 = v101;
    v37 = __src;
    memcpy(v101, __src, 0x21uLL);
    sub_1B0A68338();
    sub_1B0E469F8();
    v24 = sub_1B0E44838();
    v33 = v25;
    MEMORY[0x1B2728B30](v24);

    v36 = v110;
    v35 = v111;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03B1198(v34);
    v38 = sub_1B0E44C88();
    v39 = v26;

    sub_1B07AD0E0(v37);
    (*(v92 + 8))(v95, v91);

    v61 = v38;
    v62 = v39;
  }

  return v61;
}

unint64_t sub_1B0A6E80C()
{
  v2 = qword_1EB6E3C30;
  if (!qword_1EB6E3C30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3C30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A6E884(uint64_t a1, unint64_t a2)
{
  sub_1B03B2000(a1, a2);
  sub_1B082922C();
  v6 = sub_1B0E45748();
  sub_1B0391D50(a1, a2);
  if (v6)
  {
    return 0;
  }

  sub_1B03B2000(a1, a2);
  return a1;
}

void sub_1B0A6E948(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a3;
  v10 = a1;
  v9 = a2;
  v23 = 0;
  v24 = sub_1B0A6F1D0;
  v27 = 0;
  v28 = 0;
  v19 = 0;
  v15 = sub_1B0E429A8();
  v12 = *(v15 - 8);
  v13 = v15 - 8;
  v11 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v9 - v11;
  v27 = v3;
  v28 = v4;
  v5 = sub_1B0A6EB2C(v3, v4);
  v16 = v26;
  v26[0] = v5;
  v26[1] = v6;
  sub_1B0E42968();
  sub_1B07C7F5C();
  v18 = sub_1B0E45F18();
  v17 = v7;
  (*(v12 + 8))(v14, v15);
  sub_1B03B1198(v16);
  v25[0] = v18;
  v25[1] = v17;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3850, &qword_1B0E9B600);
  v8 = sub_1B0E42E68();
  sub_1B039A570(v24, v23, v21, MEMORY[0x1E69E73E0], v8, v22, v20);
  sub_1B03B1198(v25);
}

uint64_t sub_1B0A6EB2C(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v47 = a2;
  v44 = "Fatal error";
  v45 = "Range requires lowerBound <= upperBound";
  v46 = "Swift/Range.swift";
  v70 = 0;
  v71 = 0;
  v67 = 0;
  v68 = 0;
  v65 = 0u;
  v66 = 0u;
  v62 = 0;
  v63 = 0;
  v49 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3C40, &qword_1B0EA4010) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v48);
  v57 = v19 - v49;
  v70 = v2;
  v71 = v3;
  v69[2] = v2;
  v69[3] = v3;
  v55 = 1;
  v4 = sub_1B0E44838();
  v60 = v69;
  v69[0] = v4;
  v69[1] = v5;
  v54 = 0;
  v50 = sub_1B0E431A8();
  v6 = *(v50 - 8);
  v51 = *(v6 + 56);
  v52 = v6 + 56;
  v51(v57, v55);
  v53 = sub_1B07C7F5C();
  v56 = MEMORY[0x1E69E6158];
  sub_1B0A6F314();
  v58 = sub_1B0E45F38();
  v59 = v7;
  v61 = v8;
  sub_1B0A6F494(v57);
  sub_1B03B1198(v60);
  if (v61)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v22 = v48;
    v23 = v47;
  }

  else
  {
    v42 = v58;
    v43 = v59;
    v40 = v59;
    v67 = v58;
    v68 = v59;
    v41 = MEMORY[0x1B2726F40](v48, v47);
    if (v41 >> 14 < v40 >> 14)
    {
      sub_1B0E465A8();
      __break(1u);
    }

    v28 = sub_1B0E44EE8();
    v29 = v9;
    v30 = v10;
    v31 = v11;
    *&v65 = v28;
    *(&v65 + 1) = v9;
    *&v66 = v10;
    *(&v66 + 1) = v11;
    v64[2] = v28;
    v64[3] = v9;
    v64[4] = v10;
    v64[5] = v11;
    v33 = 1;
    v12 = sub_1B0E44838();
    v38 = v64;
    v64[0] = v12;
    v64[1] = v13;
    (v51)(v57, v33, v33, v50);
    v32 = sub_1B0A6F53C();
    v34 = MEMORY[0x1E69E67B0];
    v35 = MEMORY[0x1E69E6158];
    sub_1B0A6F314();
    v36 = sub_1B0E45F38();
    v37 = v14;
    v39 = v15;
    sub_1B0A6F494(v57);
    sub_1B03B1198(v38);
    if (v39)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      v22 = v48;
      v23 = v47;
    }

    else
    {
      v26 = v36;
      v27 = v37;
      v24 = v36;
      v62 = v36;
      v63 = v37;
      v25 = sub_1B0E45DB8();
      if (v24 >> 14 < v25 >> 14)
      {
        sub_1B0E465A8();
        __break(1u);
      }

      sub_1B0E45E28();
      v19[1] = v16;
      v20 = sub_1B0E44EC8();
      v21 = v17;

      v22 = v20;
      v23 = v21;
    }
  }

  return v22;
}

uint64_t sub_1B0A6F1D0(uint64_t *a1)
{
  v7 = 0;
  v8 = 0;
  v5 = a1[1];
  v7 = *a1;
  v8 = v5;
  v6[0] = sub_1B0E46A28();
  v6[1] = v1;
  v2 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v2);

  sub_1B0E46A08();
  v3 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v3);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v6);
  sub_1B0E44C88();
  sub_1B0E42E38();
}

uint64_t sub_1B0A6F314()
{
  sub_1B0A6F5C8(0);

  return 0;
}

unint64_t sub_1B0A6F414()
{
  v2 = qword_1EB6E3C38;
  if (!qword_1EB6E3C38)
  {
    sub_1B0E42CA8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3C38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A6F494(uint64_t a1)
{
  v3 = sub_1B0E431A8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_1B0A6F53C()
{
  v2 = qword_1EB6DB878;
  if (!qword_1EB6DB878)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB878);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A6F5C8(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x1E69E7CC0];
    }

    type metadata accessor for CompareOptions(0);
    v1 = sub_1B0E45278();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

uint64_t sub_1B0A6F674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = sub_1B0E439A8();
  (*(*(v3 - 8) + 32))(a3, a1);
  result = _s6LoggerVMa_2(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_1B0A6F6F4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B0A6F980();
  v1 = sub_1B0E439A8();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1B0A6F758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v16 = a1;
  v20 = 0;
  v19 = 0;
  v8[1] = 0;
  v14 = sub_1B0E439A8();
  v11 = *(v14 - 8);
  v12 = v14 - 8;
  v9 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v13 = v8 - v9;
  v15 = _s6LoggerVMa_2(v2);
  v10 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v8 - v10;
  v20 = v8 - v10;
  v19 = v3;
  v4 = sub_1B0A6F980();
  (*(v11 + 16))(v13, v4, v14);
  (*(v11 + 32))(v18, v13, v14);
  v5 = v17;
  v6 = v18;
  *&v18[*(v15 + 20)] = v16;
  return sub_1B0901DA8(v6, v5);
}

uint64_t sub_1B0A6F8DC()
{
  v1 = sub_1B0E439A8();
  __swift_allocate_value_buffer(v1, qword_1EB6E3C48);
  __swift_project_value_buffer(v1, qword_1EB6E3C48);
  sub_1B0E44838();
  sub_1B0E44838();
  return sub_1B0E43998();
}

uint64_t sub_1B0A6F980()
{
  if (qword_1EB6E0B80 != -1)
  {
    swift_once();
  }

  v0 = sub_1B0E439A8();
  return __swift_project_value_buffer(v0, qword_1EB6E3C48);
}

uint64_t _s6LoggerVMa_2(uint64_t a1)
{
  v2 = qword_1EB6E3C60;
  if (!qword_1EB6E3C60)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1B0A6FA60(uint64_t a1)
{
  v10 = a1;
  v9 = sub_1B0E439A8();
  v7 = *(v9 - 8);
  v8 = v9 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v9);
  v5 = &v3 - v4;
  (*(v7 + 16))(v1);
  (*(v7 + 40))(v6, v5, v9);
  return (*(v7 + 8))(v10, v9);
}

uint64_t sub_1B0A6FB98(uint64_t a1)
{
  v2 = _s6LoggerVMa_2(0);
  result = a1;
  *(v1 + *(v2 + 20)) = a1;
  return result;
}

uint64_t sub_1B0A6FBD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[3] = a1;
  v12[4] = a2;
  v12[2] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1960, &qword_1B0E9A0C0);
  sub_1B0E46A48();
  v10 = v3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12[0] = a1;
  v12[1] = a2;
  sub_1B0E467D8();
  v9 = sub_1B039A494();
  v4 = sub_1B041A060(a3);
  *(v10 + 64) = v9;
  *(v10 + 40) = v4;
  sub_1B0394964();
  sub_1B03B1198(v12);
  v11 = sub_1B0E445D8();
  sub_1B0A6FD00(v11);
}

uint64_t sub_1B0A6FD00(uint64_t a1)
{
  v2 = objc_opt_self();
  sub_1B0E44838();
  v4 = sub_1B0E44AC8();

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = sub_1B0E44598();

  [v2 powerlog:v4 eventData:v3];
  MEMORY[0x1E69E5920](v3);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1B0A6FE30(uint64_t a1)
{
  v3 = sub_1B0E439A8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v3;
}

uint64_t sub_1B0A6FED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>, double a5@<D0>)
{
  v13 = a4;
  v19 = a1;
  v20 = a5;
  v22 = a2;
  v21 = a3;
  v38 = 0;
  v37 = 0;
  v36 = 0.0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v23 = 0;
  v14 = sub_1B0E431A8();
  v15 = *(v14 - 8);
  v16 = v14 - 8;
  v17 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v18 = v12 - v17;
  v24 = _s6ParserVMa(v5);
  v25 = *(v24 - 8);
  v26 = v24 - 8;
  v28 = *(v25 + 64);
  v27 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v29 = v12 - v27;
  v30 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v31 = v12 - v30;
  v38 = v12 - v30;
  v37 = v8;
  v36 = v7;
  v35 = v9;
  v34 = v10;
  type metadata accessor for WatchOSRender.HTMLParser();
  v32 = sub_1B0A7E3B4();
  if (v32)
  {
    v12[1] = v32;
    v12[0] = v32;
    v33 = v32;
    (*(v15 + 16))(v18, v22, v14);
    sub_1B0A7613C(v12[0], v19, v18, v21, v29, v20);
    sub_1B08F5BEC(v29, v31);
    sub_1B0A761E4(v31, v13);
    (*(v25 + 56))(v13, 0, 1, v24);
    (*(v15 + 8))(v22, v14);
    return sub_1B08F5DC8(v31);
  }

  else
  {

    (*(v15 + 8))(v22, v14);
    return (*(v25 + 56))(v13, 1, 1, v24);
  }
}

uint64_t _s6ParserVMa(uint64_t a1)
{
  v2 = qword_1EB6E3D00;
  if (!qword_1EB6E3D00)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

void *sub_1B0A7024C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v23 = a4;
  v27 = a1;
  v28 = a2;
  v29 = a3;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v24 = 0;
  v25 = (*(*(type metadata accessor for MessageSummary.Accumulator(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v26 = &v15 - v25;
  v31 = _s6ParserV4TextVMa(v4);
  v32 = (*(*(v31 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v31);
  v35 = (&v15 - v32);
  v33 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v15 - v32);
  v34 = &v15 - v33;
  v44 = &v15 - v33;
  v43 = v6;
  v42 = v7;
  v41 = v8;
  v40 = v9;
  v36 = sub_1B0A7678C(v10, v9, v6, v7, v8);
  sub_1B0A76D34(v35, v34);
  v39 = v36 & 1;
  if (v36)
  {
    v15 = sub_1B0A77B2C(v30, v27, v29, v28);
    v16 = v12;
    v17 = v13;
    v18 = v14;
    *&v37 = v15;
    *(&v37 + 1) = v12;
    *&v38 = v13;
    *(&v38 + 1) = v14;
    v19 = *(v34 + 4);
    v20 = *(v34 + 5);
    sub_1B03B2000(v19, v20);
    sub_1B08C49A4(&v34[v31[6]], v26);
    v21 = *&v34[v31[7]];
    v22 = *&v34[v31[9]];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0A766EC(v15, v16, v18, v19, v20, v26, 0, v22, v23, v17, v21);
  }

  else
  {
    sub_1B0A77C9C(v34, v23);
  }

  return sub_1B08F5CB4(v34);
}

uint64_t sub_1B0A704E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v21 = a5;
  v31 = a1;
  v32 = a2;
  v36 = a3;
  v38 = a4;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2E20, &qword_1B0EA03B8);
  v22 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v17 - v22;
  v27 = 0;
  v48 = type metadata accessor for WatchOSRender.Message(0);
  v45 = *(v48 - 8);
  v46 = v48 - 8;
  v23 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27);
  v24 = &v17 - v23;
  v55 = &v17 - v23;
  v25 = (*(*(_s6LoggerVMa_2(v7) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27);
  v43 = &v17 - v25;
  v37 = _s6ParserVMa(v8);
  v26 = (*(*(v37 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v17 - v26;
  v28 = (*(*(type metadata accessor for WatchOSRender.Message.InfoFromLibrary(v9) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27);
  v39 = &v17 - v28;
  v33 = type metadata accessor for Message(v10);
  v29 = *(v33 - 8);
  v11 = MEMORY[0x1EEE9AC00](v33);
  v44 = &v17 - v12;
  v54 = v31;
  v53 = v13;
  v52 = v36;
  v51 = v14;
  v50 = v5;
  v35 = *(v29 + 16);
  v34 = v29 + 16;
  v35(v11);
  sub_1B08F53FC(v36, v39);
  sub_1B0A761E4(v5, v30);
  sub_1B08F5590(v38, v43);
  sub_1B0A71710(v31, v44, v39, v30, v43, v56);
  (v35)(v44, v32, v33);
  sub_1B08F53FC(v36, v39);
  v40 = v57;
  v41 = v58;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v42 = *&v5[*(v37 + 32)];

  sub_1B08F5590(v38, v43);
  sub_1B0A7C898(v44, v39, v40, v41, v42, v43, v47);
  if ((*(v45 + 48))(v47, 1, v48) == 1)
  {
    sub_1B08F5618(v47);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2F20, &unk_1B0EA0610);
    (*(*(v16 - 8) + 56))(v21, 1);
    return sub_1B0A77EC8(v56);
  }

  else
  {
    sub_1B08F57EC(v47, v24);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2F20, &unk_1B0EA0610);
    v18 = &v21[*(v19 + 48)];
    sub_1B0902624(v24, v21);
    v20 = v56;
    sub_1B0A77F6C(v56, v49);
    memcpy(v18, v20, 0x50uLL);
    (*(*(v19 - 8) + 56))(v21, 0, 1);
    sub_1B08F597C(v24);
    return sub_1B0A77EC8(v20);
  }
}

id sub_1B0A70B04(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v28 = a2;
  v26 = v2;
  v18 = [objc_opt_self() createMessageContent];
  v25 = v18;
  swift_getObjectType();
  swift_unknownObjectRetain();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17 = sub_1B0E44AC8();

  [v18 setMessageId_];
  MEMORY[0x1E69E5920](v17);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v32 = *(v2 + 8);
  sub_1B0A780BC(&v32, v24);
  v33 = v32;
  if ((*(&v32 + 1) & 0xF000000000000000) == 0xF000000000000000)
  {
    v15 = 0;
  }

  else
  {
    v3 = v33;
    v14 = sub_1B0E42F18();
    sub_1B0391D50(v3, *(&v3 + 1));
    v15 = v14;
  }

  [v18 setTextData_];
  MEMORY[0x1E69E5920](v15);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v31 = *(v16 + 8);
  sub_1B0A780BC(&v31, v23);
  v22 = v31;
  v13 = (*(&v31 + 1) & 0xF000000000000000) != 0xF000000000000000;
  sub_1B043C03C(&v22);
  [v18 setHasTextData_];
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v30 = *(v16 + 24);
  sub_1B0A780BC(&v30, v21);
  v34 = v30;
  if ((*(&v30 + 1) & 0xF000000000000000) == 0xF000000000000000)
  {
    v12 = 0;
  }

  else
  {
    v4 = v34;
    v11 = sub_1B0E42F18();
    sub_1B0391D50(v4, *(&v4 + 1));
    v12 = v11;
  }

  [v18 setHtmlContentData_];
  MEMORY[0x1E69E5920](v12);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  [v18 setMainAlternativeValid_];
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  [v18 setOriginalContentSize_];
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v29 = *(v16 + 64);
  sub_1B074E7A8(&v29, &v20);
  v19 = v29;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3C70, &unk_1B0EA40B8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3C78, &qword_1B0EA40C8);
  v5 = sub_1B0A78140();
  sub_1B039CA88(sub_1B0A716BC, 0, v8, v9, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v10);
  sub_1B039E440(&v19);
  v7 = sub_1B0E451A8();

  [v18 setAttachments_];
  MEMORY[0x1E69E5920](v7);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  [v18 setPartiallyLoaded_];
  swift_unknownObjectRelease();
  return v18;
}

uint64_t sub_1B0A70F94()
{
  v2 = *(v0 + 8);
  sub_1B070E18C(v2, *(v0 + 16));
  return v2;
}

uint64_t sub_1B0A70FCC(uint64_t a1, unint64_t a2)
{
  sub_1B070E18C(a1, a2);
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  sub_1B070E144(v3, v4);
  return sub_1B070E144(a1, a2);
}

uint64_t sub_1B0A7101C()
{
  v2 = *(v0 + 24);
  sub_1B070E18C(v2, *(v0 + 32));
  return v2;
}

uint64_t sub_1B0A71054(uint64_t a1, unint64_t a2)
{
  sub_1B070E18C(a1, a2);
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  sub_1B070E144(v3, v4);
  return sub_1B070E144(a1, a2);
}

uint64_t sub_1B0A710AC()
{
  v2 = *(v0 + 64);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B0A710D8(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v1 + 64) = a1;
}

BOOL sub_1B0A71114(char *a1, char *a2)
{
  v36 = a1;
  v35 = a2;
  v44 = *a1;
  v43 = *a2;
  if ((v44 & 1) != (v43 & 1))
  {
    return 0;
  }

  v42 = *(a1 + 8);
  sub_1B0A780BC(&v42, v34);
  v33 = v42;
  v41 = *(a2 + 8);
  sub_1B0A780BC(&v41, v32);
  v31 = v41;
  sub_1B0A780BC(&v33, v29);
  sub_1B0A780BC(&v31, &v30);
  if ((v29[1] & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_1B0A780BC(v29, &v19);
    if ((*(&v30 + 1) & 0xF000000000000000) != 0xF000000000000000)
    {
      v18 = v19;
      v17 = v30;
      v13 = MEMORY[0x1B2725040](v19, *(&v19 + 1), v30, *(&v30 + 1));
      sub_1B075D3E8(&v17);
      sub_1B075D3E8(&v18);
      sub_1B043C03C(v29);
      v14 = v13;
      goto LABEL_8;
    }

    sub_1B075D3E8(&v19);
    goto LABEL_10;
  }

  if ((*(&v30 + 1) & 0xF000000000000000) != 0xF000000000000000)
  {
LABEL_10:
    sub_1B0A79B68(v29);
    v14 = 0;
    goto LABEL_8;
  }

  sub_1B043C03C(v29);
  v14 = 1;
LABEL_8:
  sub_1B043C03C(&v31);
  sub_1B043C03C(&v33);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v40 = *(a1 + 24);
  sub_1B0A780BC(&v40, v28);
  v27 = v40;
  v39 = *(a2 + 24);
  sub_1B0A780BC(&v39, v26);
  v25 = v39;
  sub_1B0A780BC(&v27, v23);
  sub_1B0A780BC(&v25, &v24);
  if ((v23[1] & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_1B0A780BC(v23, &v22);
    if ((*(&v24 + 1) & 0xF000000000000000) != 0xF000000000000000)
    {
      v21 = v22;
      v20 = v24;
      v11 = MEMORY[0x1B2725040](v22, *(&v22 + 1), v24, *(&v24 + 1));
      sub_1B075D3E8(&v20);
      sub_1B075D3E8(&v21);
      sub_1B043C03C(v23);
      v12 = v11;
      goto LABEL_18;
    }

    sub_1B075D3E8(&v22);
    goto LABEL_20;
  }

  if ((*(&v24 + 1) & 0xF000000000000000) != 0xF000000000000000)
  {
LABEL_20:
    sub_1B0A79B68(v23);
    v12 = 0;
    goto LABEL_18;
  }

  sub_1B043C03C(v23);
  v12 = 1;
LABEL_18:
  sub_1B043C03C(&v25);
  sub_1B043C03C(&v27);
  if (v12)
  {
    v6 = *(a1 + 5);
    v9 = *(a1 + 6);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v7 = *(a2 + 5);
    v8 = *(a2 + 6);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v10 = MEMORY[0x1B2726DE0](v6, v9, v7, v8);

    if (v10)
    {
      v38 = *(a1 + 7);
      v37 = *(a2 + 7);
      if (v38 == v37)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0A79BE8();
        v5 = sub_1B0E45368();

        if (v5)
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0902AA8();
          sub_1B0A79C60();
          v4 = sub_1B0E44758();

          return (v4 & 1) != 0;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

BOOL sub_1B0A71654(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v5, a2, sizeof(v5));
  return sub_1B0A71114(__dst, v5);
}

void *sub_1B0A716BC@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = sub_1B0A64540();
  *a2 = result;
  return result;
}

void *sub_1B0A71710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v45 = a6;
  v31 = a1;
  v41 = a2;
  v37 = a3;
  v36 = a4;
  v35 = a5;
  v56 = 0;
  v42 = v55;
  v44 = 80;
  memset(v55, 0, sizeof(v55));
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v34 = &v47;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v25 = 0;
  v20 = (*(*(_s6LoggerVMa_2(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v30 = &v19 - v20;
  v40 = type metadata accessor for Message(v7);
  v38 = *(v40 - 8);
  v39 = v40 - 8;
  v21 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v26 = &v19 - v21;
  v22 = (*(*(_s6ParserV4TextVMa(v8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v28 = (&v19 - v22);
  v23 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v33 = (&v19 - v23);
  v56 = &v19 - v23;
  v24 = (*(*(type metadata accessor for WatchOSRender.Message.InfoFromLibrary(v11) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v37);
  v27 = (&v19 - v24);
  v54 = v31;
  v53 = v12;
  v52 = v13;
  v51 = a4;
  v50 = v14;
  sub_1B08F53FC(v13, &v19 - v24);
  v47 = sub_1B0A6A714(v31, v27);
  v48 = v15;
  v49 = v16;
  sub_1B0A7024C(v41, v34, v35, v33);
  (*(v38 + 16))(v26, v41, v40);
  sub_1B08F53FC(v37, v27);
  sub_1B0A77C9C(v33, v28);
  v17 = _s6ParserVMa(v25);
  v29 = *(v36 + *(v17 + 32));

  sub_1B08F5590(v35, v30);
  v32 = v57;
  sub_1B0A71AF0(v31, v26, v27, v28, v34, v29, v30, v57);
  memcpy(v42, v32, v44);
  sub_1B08F5CB4(v33);
  sub_1B039E440(v34);
  v43 = __dst;
  memcpy(__dst, v42, v44);
  sub_1B0A77F6C(v43, &v46);
  sub_1B039480C(v35);
  sub_1B08F5DC8(v36);
  sub_1B08F533C(v37);
  (*(v38 + 8))(v41, v40);
  sub_1B0A77EC8(v42);
  return memcpy(v45, v43, v44);
}

void *sub_1B0A71AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v40 = a8;
  v41 = a1;
  v44 = a2;
  v58 = a3;
  v59 = a4;
  v42 = a5;
  v43 = a6;
  v46 = a7;
  memset(__b, 0, sizeof(__b));
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v57 = 0;
  v45 = (*(*(type metadata accessor for MessageSummary.Accumulator(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v61 = &v27 - v45;
  v76 = v8;
  v75 = v9;
  v74 = v10;
  v73 = v11;
  v72 = v12;
  v71 = v13;
  v70 = v14;
  __b[1] = 0;
  __b[2] = 0xF000000000000000;
  __b[3] = 0;
  __b[4] = 0xF000000000000000;
  v60 = _s6ParserV4TextVMa(v15);
  LOBYTE(__b[0]) = *(v59 + v60[8]);
  v49 = *v59;
  v47 = v59[1];
  v48 = *(v59 + 2);
  v50 = v59[3];
  MEMORY[0x1E69E5928](v49);

  v51 = sub_1B0A79F30(v46, v49, v47, v50, v48);
  v52 = v16;
  MEMORY[0x1E69E5920](v49);

  v17 = __b[1];
  v18 = __b[2];
  __b[1] = v51;
  __b[2] = v52;
  sub_1B070E144(v17, v18);
  v53 = v59[4];
  v54 = v59[5];
  sub_1B03B2000(v53, v54);
  v55 = sub_1B0A6E884(v53, v54);
  v56 = v19;
  sub_1B0391D50(v53, v54);
  v20 = __b[3];
  v21 = __b[4];
  __b[3] = v55;
  __b[4] = v56;
  sub_1B070E144(v20, v21);
  v22 = type metadata accessor for WatchOSRender.Message.InfoFromLibrary(v57);
  __b[7] = *(v58 + *(v22 + 44));
  sub_1B08C49A4(v59 + v60[6], v61);
  v62 = sub_1B08C4AC8(v61);
  v63 = v23;
  if (v23)
  {
    v38 = v62;
    v39 = v63;
    v35 = v63;
    v34 = v62;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    v36 = v34;
    v37 = v35;
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v66 = v36;
  v67 = v37;
  if (v37)
  {
    v68 = v66;
    v69 = v67;
  }

  else
  {
    v68 = sub_1B0E44838();
    v69 = v24;
    if (v67)
    {
      sub_1B03B1198(&v66);
    }
  }

  v31 = __b;
  __b[5] = v68;
  __b[6] = v69;
  v30 = 0;
  __b[8] = sub_1B0E46A48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3C88, &qword_1B0EA40D0);
  v27 = sub_1B0E46A48();
  sub_1B0902AA8();
  __b[9] = sub_1B0E445D8();
  v28 = *(v59 + v60[7]);
  v29 = *(v59 + v60[9]);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0A71F8C(v44, v29, v42, v43, v46, v28);

  v32 = v65;
  v33 = 80;
  memcpy(v65, v31, sizeof(v65));
  sub_1B0A77F6C(v65, &v64);
  sub_1B039480C(v46);

  sub_1B08F5CB4(v59);
  sub_1B08F533C(v58);
  v25 = type metadata accessor for Message(v30);
  (*(*(v25 - 8) + 8))(v44);
  sub_1B0A77EC8(v31);
  return memcpy(v40, v32, v33);
}

void sub_1B0A71F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v186 = v250;
  v209 = a5;
  v193 = a4;
  v192 = a3;
  v215 = a2;
  v191 = a6;
  v201 = a1;
  v203 = 0;
  v275 = 0;
  v274 = 0.0;
  v273 = 0;
  v272 = 0;
  v271 = 0;
  v270 = 0;
  v269 = 0;
  v268 = 0;
  v267 = 0;
  v266[1] = 0;
  v266[0] = 0;
  v187 = 0;
  v263 = 0;
  v223 = 0;
  v256 = 0;
  v188 = *(_s6LoggerVMa_2(0) - 8);
  v210 = v188;
  v211 = *(v188 + 64);
  v189 = v211;
  MEMORY[0x1EEE9AC00](0);
  v214 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = v214;
  v206 = sub_1B0E439A8();
  v195 = v206;
  v196 = *(v206 - 8);
  v205 = v196;
  v197 = v196;
  v198 = *(v196 + 64);
  MEMORY[0x1EEE9AC00](v203);
  v200 = (v198 + 15) & 0xFFFFFFFFFFFFFFF0;
  v199 = &v105 - v200;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v9 = &v105 - v200;
  v202 = &v105 - v200;
  v275 = v201;
  v274 = v8;
  v273 = v10;
  v272 = v11;
  v271 = v12;
  v270 = v13;
  v269 = v14;
  v204 = &type metadata for DisplayPart.Attachment;
  v268 = sub_1B0E46A48();
  v267 = sub_1B0E46A48();
  v207 = *(v205 + 16);
  v208 = (v205 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v207(v9, v209, v206);
  sub_1B08F5590(v209, v214);
  v212 = *(v210 + 80);
  v213 = (v212 + 16) & ~v212;
  v220 = swift_allocObject();
  sub_1B0901DA8(v214, v220 + v213);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v229 = 7;
  v230 = swift_allocObject();
  *(v230 + 16) = v215;
  v244 = sub_1B0E43988();
  v216 = v244;
  v243 = sub_1B0E458D8();
  v217 = v243;
  v224 = 17;
  v234 = swift_allocObject();
  v218 = v234;
  *(v234 + 16) = v223;
  v235 = swift_allocObject();
  v219 = v235;
  v226 = 8;
  *(v235 + 16) = 8;
  v228 = 32;
  v15 = swift_allocObject();
  v16 = v220;
  v221 = v15;
  *(v15 + 16) = sub_1B0901E30;
  *(v15 + 24) = v16;
  v17 = swift_allocObject();
  v18 = v221;
  v236 = v17;
  v222 = v17;
  *(v17 + 16) = sub_1B06BCD8C;
  *(v17 + 24) = v18;
  v237 = swift_allocObject();
  v225 = v237;
  *(v237 + 16) = v223;
  v238 = swift_allocObject();
  v227 = v238;
  *(v238 + 16) = v226;
  v19 = swift_allocObject();
  v20 = v230;
  v231 = v19;
  *(v19 + 16) = sub_1B0A781C8;
  *(v19 + 24) = v20;
  v21 = swift_allocObject();
  v22 = v231;
  v241 = v21;
  v232 = v21;
  *(v21 + 16) = sub_1B03B0DF8;
  *(v21 + 24) = v22;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v233 = v242;
  v239 = sub_1B0E46A48();
  v240 = v23;

  v24 = v234;
  v25 = v240;
  *v240 = sub_1B0398F5C;
  v25[1] = v24;

  v26 = v235;
  v27 = v240;
  v240[2] = sub_1B0398F5C;
  v27[3] = v26;

  v28 = v236;
  v29 = v240;
  v240[4] = sub_1B03992D4;
  v29[5] = v28;

  v30 = v237;
  v31 = v240;
  v240[6] = sub_1B0398F5C;
  v31[7] = v30;

  v32 = v238;
  v33 = v240;
  v240[8] = sub_1B0398F5C;
  v33[9] = v32;

  v34 = v240;
  v35 = v241;
  v240[10] = sub_1B0399260;
  v34[11] = v35;
  sub_1B0394964();

  if (os_log_type_enabled(v244, v243))
  {
    v36 = v187;
    v180 = sub_1B0E45D78();
    v176 = v180;
    v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v178 = 0;
    v181 = sub_1B03949A8(0, v177, v177);
    v179 = v181;
    v182 = sub_1B03949A8(v178, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v249 = v180;
    v248 = v181;
    v247 = v182;
    v183 = &v249;
    sub_1B0394A48(0, &v249);
    sub_1B0394A48(2, v183);
    v245 = sub_1B0398F5C;
    v246 = v218;
    sub_1B03949FC(&v245, v183, &v248, &v247);
    v184 = v36;
    v185 = v36;
    if (v36)
    {
      v174 = 0;

      __break(1u);
    }

    else
    {
      v245 = sub_1B0398F5C;
      v246 = v219;
      sub_1B03949FC(&v245, &v249, &v248, &v247);
      v172 = 0;
      v173 = 0;
      v245 = sub_1B03992D4;
      v246 = v222;
      sub_1B03949FC(&v245, &v249, &v248, &v247);
      v170 = 0;
      v171 = 0;
      v245 = sub_1B0398F5C;
      v246 = v225;
      sub_1B03949FC(&v245, &v249, &v248, &v247);
      v168 = 0;
      v169 = 0;
      v245 = sub_1B0398F5C;
      v246 = v227;
      sub_1B03949FC(&v245, &v249, &v248, &v247);
      v166 = 0;
      v167 = 0;
      v245 = sub_1B0399260;
      v246 = v232;
      sub_1B03949FC(&v245, &v249, &v248, &v247);
      v164 = 0;
      v165 = 0;
      _os_log_impl(&dword_1B0389000, v216, v217, "[%lld] Text accumulator has %ld attachment(s).", v176, 0x16u);
      v163 = 0;
      sub_1B03998A8(v179, 0, v177);
      sub_1B03998A8(v182, v163, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();

      v175 = v164;
    }
  }

  else
  {
    v37 = v187;

    v175 = v37;
  }

  v161 = v175;

  v157 = *(v197 + 8);
  v158 = (v197 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v157(v202, v195);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v265 = v215;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3CA0, &qword_1B0EA3E00);
  v159 = v160;
  sub_1B0A64E50();
  sub_1B0E45798();
  for (i = v161; ; i = v156)
  {
    v156 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3CB0, &qword_1B0EA3E10);
    sub_1B0E46518();
    v38 = v186;
    v39 = v186[59];
    v40 = v186[60];
    v41 = v186[61];
    v186[70] = v186[62];
    v38[69] = v41;
    v38[68] = v40;
    v38[67] = v39;
    v42 = v38[63];
    v43 = v38[64];
    v44 = v38[65];
    v38[74] = v38[66];
    v38[73] = v44;
    v38[72] = v43;
    v38[71] = v42;
    v45 = v38[67];
    v46 = v38[68];
    v47 = v38[69];
    v38[78] = v38[70];
    v38[77] = v47;
    v38[76] = v46;
    v38[75] = v45;
    v48 = v38[71];
    v49 = v38[72];
    v50 = v38[73];
    v38[82] = v38[74];
    v38[81] = v50;
    v38[80] = v49;
    v38[79] = v48;
    if (sub_1B0A64ED8(v264) == 1)
    {
      break;
    }

    v51 = v186;
    v52 = v186[75];
    v53 = v186[76];
    v54 = v186[77];
    v186[104] = v186[78];
    v51[103] = v54;
    v51[102] = v53;
    v51[101] = v52;
    v55 = v51[79];
    v56 = v51[80];
    v57 = v51[81];
    v51[108] = v51[82];
    v51[107] = v57;
    v51[106] = v56;
    v51[105] = v55;
    v152 = v264;
    sub_1B08C4F88(v264, v257);
    v155 = v282;
    v154 = sub_1B0A68600(v282);
    v153 = v154;
    v256 = v154;
    sub_1B08C4F88(v152, v255);
    sub_1B0A651EC(v155, v154, v192, v276);
    v58 = v186;
    v59 = v276[0];
    v60 = v276[1];
    v279 = v277;
    v186[95] = v276[2];
    v58[94] = v60;
    v58[93] = v59;
    if (v278)
    {
      v61 = v186;
      v62 = v186[93];
      v63 = v186[94];
      v64 = v186[95];
      v281 = v279;
      v186[99] = v64;
      v61[98] = v63;
      v61[97] = v62;
      sub_1B0A65154(v280, &v254);
      v65 = v186;
      v66 = v186[97];
      v67 = v186[98];
      v68 = v186[99];
      v253 = v281;
      v186[34] = v68;
      v65[33] = v67;
      v65[32] = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3C70, &unk_1B0EA40B8);
      sub_1B0E452E8();
      if (sub_1B0A63DB8(v153))
      {
        sub_1B08C4F88(v264, v251);
        v69 = v186;
        v70 = v186[101];
        v71 = v186[102];
        v72 = v186[103];
        v250[3] = v186[104];
        v250[2] = v72;
        v250[1] = v71;
        v250[0] = v70;
        v73 = v186[105];
        v74 = v186[106];
        v75 = v186[107];
        v186[7] = v186[108];
        v69[6] = v75;
        v250[5] = v74;
        v250[4] = v73;
        sub_1B0E452E8();
      }

      else if (sub_1B0A650C8())
      {
        sub_1B08C4F88(v264, v252);
        v76 = v186;
        v77 = v186[101];
        v78 = v186[102];
        v79 = v186[103];
        v186[19] = v186[104];
        v76[18] = v79;
        v76[17] = v78;
        v76[16] = v77;
        v80 = v76[105];
        v81 = v76[106];
        v82 = v76[107];
        v76[23] = v76[108];
        v76[22] = v82;
        v76[21] = v81;
        v76[20] = v80;
        sub_1B0E452E8();
      }

      sub_1B08D9204();
      sub_1B08C5168(v264);
    }

    else
    {
      sub_1B08C5168(v264);
    }
  }

  v83 = v156;
  sub_1B039E440(v266);
  v147 = v268;
  v145 = v268;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v148 = v267;
  v146 = v267;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v149 = &v105;
  v84 = MEMORY[0x1EEE9AC00](&v105);
  v85 = v209;
  v86 = v194;
  *(&v105 - 6) = v87;
  *(&v105 - 5) = v85;
  *(&v105 - 4) = v86;
  *(&v105 - 3) = v84;
  *(&v105 - 2) = v88;
  Message.extractAttachments(lineEnding:writeAttachment:writeWithoutAttachments:cache:)(2, sub_1B0A79108, (&v105 - 8), sub_1B0A75EEC, 0, v89);
  v150 = v83;
  v151 = v83;
  if (v83)
  {
    v90 = v199;
    v125 = v151;
    v124 = 0;

    v91 = v125;
    v263 = v125;
    v207(v90, v209, v195);
    sub_1B08F5590(v209, v190);
    v126 = (v212 + 16) & ~v212;
    v134 = swift_allocObject();
    sub_1B0901DA8(v190, v134 + v126);
    v143 = sub_1B0E43988();
    v127 = v143;
    v142 = sub_1B0E458E8();
    v128 = v142;
    v129 = 17;
    v133 = 7;
    v137 = swift_allocObject();
    v130 = v137;
    *(v137 + 16) = 0;
    v138 = swift_allocObject();
    v131 = v138;
    *(v138 + 16) = 8;
    v132 = 32;
    v92 = swift_allocObject();
    v93 = v134;
    v135 = v92;
    *(v92 + 16) = sub_1B0901E30;
    *(v92 + 24) = v93;
    v94 = swift_allocObject();
    v95 = v135;
    v141 = v94;
    v136 = v94;
    *(v94 + 16) = sub_1B06BCD8C;
    *(v94 + 24) = v95;
    v139 = sub_1B0E46A48();
    v140 = v96;

    v97 = v137;
    v98 = v140;
    *v140 = sub_1B0398F5C;
    v98[1] = v97;

    v99 = v138;
    v100 = v140;
    v140[2] = sub_1B0398F5C;
    v100[3] = v99;

    v101 = v140;
    v102 = v141;
    v140[4] = sub_1B03992D4;
    v101[5] = v102;
    sub_1B0394964();

    if (os_log_type_enabled(v143, v142))
    {
      v103 = v124;
      v118 = sub_1B0E45D78();
      v114 = v118;
      v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v116 = 0;
      v119 = sub_1B03949A8(0, v115, v115);
      v117 = v119;
      v120 = sub_1B03949A8(v116, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v262 = v118;
      v261 = v119;
      v260 = v120;
      v121 = &v262;
      sub_1B0394A48(0, &v262);
      sub_1B0394A48(1, v121);
      v258 = sub_1B0398F5C;
      v259 = v130;
      sub_1B03949FC(&v258, v121, &v261, &v260);
      v122 = v103;
      v123 = v103;
      if (v103)
      {
        v112 = 0;

        __break(1u);
      }

      else
      {
        v258 = sub_1B0398F5C;
        v259 = v131;
        sub_1B03949FC(&v258, &v262, &v261, &v260);
        v110 = 0;
        v111 = 0;
        v258 = sub_1B03992D4;
        v259 = v136;
        sub_1B03949FC(&v258, &v262, &v261, &v260);
        v108 = 0;
        v109 = 0;
        _os_log_impl(&dword_1B0389000, v127, v128, "[%lld] Failed to extract attachments from MIME.", v114, 0xCu);
        v107 = 0;
        sub_1B03998A8(v117, 0, v115);
        sub_1B03998A8(v120, v107, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();

        v113 = v108;
      }
    }

    else
    {
      v104 = v124;

      v113 = v104;
    }

    v106 = v113;

    v157(v199, v195);
    v144 = v106;
  }

  else
  {

    v144 = v150;
  }

  sub_1B039E440(&v267);
  sub_1B039E440(&v268);
}

void *sub_1B0A73370(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, double a5)
{
  v71 = v141;
  v78 = a1;
  v89 = a2;
  v84 = a3;
  v76 = a4;
  v77 = a5;
  v90 = sub_1B0A79120;
  v92 = sub_1B0901E30;
  v94 = sub_1B06BCD8C;
  v98 = sub_1B07AD0A4;
  v102 = sub_1B039BCF8;
  v104 = sub_1B0398F5C;
  v106 = sub_1B0398F5C;
  v108 = sub_1B03992D4;
  v110 = sub_1B0398F5C;
  v112 = sub_1B0398F5C;
  v115 = sub_1B039BCEC;
  v140 = 0;
  v139 = 0;
  v138 = 0;
  v137 = 0;
  v136 = 0.0;
  v132 = 0;
  v133 = 0;
  v130 = 0;
  v131 = 0;
  v128 = 0;
  v129 = 0;
  v72 = 0;
  v73 = 0;
  v74 = *(_s6LoggerVMa_2(0) - 8);
  v85 = v74;
  v86 = *(v74 + 64);
  v75 = (v86 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v88 = &v41 - v75;
  v79 = sub_1B0E439A8();
  v82 = *(v79 - 8);
  v80 = v79 - 8;
  v81 = (*(v82 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v78);
  v83 = &v41 - v81;
  v140 = v6;
  v139 = v89;
  v138 = v7;
  v137 = v8;
  v136 = v5;
  (*(v82 + 16))(&v41 - v81);
  sub_1B08F5590(v84, v88);
  v87 = (*(v85 + 80) + 16) & ~*(v85 + 80);
  v100 = 7;
  v93 = swift_allocObject();
  sub_1B0901DA8(v88, v93 + v87);
  sub_1B07B47AC(v89, v135);
  v91 = swift_allocObject();
  memcpy((v91 + 16), v89, 0x58uLL);

  v99 = 32;
  v9 = swift_allocObject();
  v10 = v91;
  v101 = v9;
  *(v9 + 16) = v90;
  *(v9 + 24) = v10;

  v119 = sub_1B0E43988();
  v120 = sub_1B0E458D8();
  v96 = 17;
  v105 = swift_allocObject();
  *(v105 + 16) = 0;
  v107 = swift_allocObject();
  v97 = 8;
  *(v107 + 16) = 8;
  v11 = swift_allocObject();
  v12 = v93;
  v95 = v11;
  *(v11 + 16) = v92;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v95;
  v109 = v13;
  *(v13 + 16) = v94;
  *(v13 + 24) = v14;
  v111 = swift_allocObject();
  *(v111 + 16) = 34;
  v113 = swift_allocObject();
  *(v113 + 16) = v97;
  v15 = swift_allocObject();
  v16 = v101;
  v103 = v15;
  *(v15 + 16) = v98;
  *(v15 + 24) = v16;
  v17 = swift_allocObject();
  v18 = v103;
  v116 = v17;
  *(v17 + 16) = v102;
  *(v17 + 24) = v18;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v114 = sub_1B0E46A48();
  v117 = v19;

  v20 = v105;
  v21 = v117;
  *v117 = v104;
  v21[1] = v20;

  v22 = v107;
  v23 = v117;
  v117[2] = v106;
  v23[3] = v22;

  v24 = v109;
  v25 = v117;
  v117[4] = v108;
  v25[5] = v24;

  v26 = v111;
  v27 = v117;
  v117[6] = v110;
  v27[7] = v26;

  v28 = v113;
  v29 = v117;
  v117[8] = v112;
  v29[9] = v28;

  v30 = v116;
  v31 = v117;
  v117[10] = v115;
  v31[11] = v30;
  sub_1B0394964();

  if (os_log_type_enabled(v119, v120))
  {
    v32 = v72;
    v63 = sub_1B0E45D78();
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v64 = sub_1B03949A8(0, v62, v62);
    v65 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v67 = &v125;
    v125 = v63;
    v68 = &v124;
    v124 = v64;
    v69 = &v123;
    v123 = v65;
    v66 = 2;
    sub_1B0394A48(2, &v125);
    sub_1B0394A48(v66, v67);
    v121 = v104;
    v122 = v105;
    sub_1B03949FC(&v121, v67, v68, v69);
    v70 = v32;
    if (v32)
    {

      __break(1u);
    }

    else
    {
      v121 = v106;
      v122 = v107;
      sub_1B03949FC(&v121, &v125, &v124, &v123);
      v61 = 0;
      v121 = v108;
      v122 = v109;
      sub_1B03949FC(&v121, &v125, &v124, &v123);
      v60 = 0;
      v121 = v110;
      v122 = v111;
      sub_1B03949FC(&v121, &v125, &v124, &v123);
      v59 = 0;
      v121 = v112;
      v122 = v113;
      sub_1B03949FC(&v121, &v125, &v124, &v123);
      v58 = 0;
      v121 = v115;
      v122 = v116;
      sub_1B03949FC(&v121, &v125, &v124, &v123);
      _os_log_impl(&dword_1B0389000, v119, v120, "[%lld] Inserting image attachment data [%{public}s].", v63, 0x16u);
      sub_1B03998A8(v64, 0, v62);
      sub_1B03998A8(v65, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v119);
  (*(v82 + 8))(v83, v79);
  v56 = sub_1B0E44838();
  v57 = v33;
  v34 = sub_1B0E450E8();
  sub_1B0A6FBD0(v56, v57, v34);

  *v71 = *(v78 + 80);
  result = sub_1B070B280(v141, &v134);
  v71[1] = *v71;
  if (v143)
  {
    v50 = v142;
    v51 = v143;
    v132 = v142;
    v133 = v143;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v52 = sub_1B0A6A7C8(v50, v51);
    v53 = v36;
    v130 = v52;
    v131 = v36;
    v54 = sub_1B0A73EE0();
    v55 = v37;
    if ((v37 & 0xF000000000000000) != 0xF000000000000000)
    {
      v48 = v54;
      v49 = v55;
      v47 = v55;
      v46 = v54;
      v128 = v54;
      v129 = v55;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v41 = objc_opt_self();
      sub_1B03B2000(v46, v47);
      v42 = sub_1B0E42F18();
      sub_1B0391D50(v46, v47);
      HIDWORD(v38) = HIDWORD(v77);
      *&v38 = v77;
      v45 = [v41 scaleImageFromData:v42 maxWidth:v38];
      MEMORY[0x1E69E5920](v42);
      v39 = sub_1B0E42F38();
      v44 = v127;
      v127[0] = v39;
      v127[1] = v40;
      v43 = v126;
      v126[0] = v52;
      v126[1] = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3CC0, &qword_1B0EA40D8);
      sub_1B0E44788();
      MEMORY[0x1E69E5920](v45);
      sub_1B0391D50(v46, v47);
    }
  }

  return result;
}

uint64_t sub_1B0A73EE0()
{
  v24 = sub_1B0E450C8();
  if (!v24 || sub_1B0E450E8() >= 2000000)
  {
    return 0;
  }

  sub_1B071952C();
  v0 = sub_1B0E450E8();
  v22 = sub_1B0A79074(v24, v0, 0);
  v25 = *(v23 + 24);
  if (v25 == 5)
  {
    goto LABEL_38;
  }

  if (v25 == 3)
  {
    sub_1B0A79128();
    v12 = sub_1B08C0C38();
    sub_1B075D234();
    MEMORY[0x1E69E5928](v12);
    v13 = sub_1B075BDE4(v12);
    MEMORY[0x1E69E5928](v13);
    if (v13)
    {
      MEMORY[0x1E69E5928](v22);
      [v13 appendData_];
      MEMORY[0x1E69E5920](v22);
      MEMORY[0x1E69E5920](v13);
    }

    MEMORY[0x1E69E5928](v13);
    if (v13)
    {
      [v13 done];
      MEMORY[0x1E69E5920](v13);
    }

    v11 = [v12 data];
    if (v11)
    {
      v7 = sub_1B0E42F38();
      v8 = v3;
      MEMORY[0x1E69E5920](v11);
      v9 = v7;
      v10 = v8;
    }

    else
    {
      v9 = 0;
      v10 = 0xF000000000000000;
    }

    if ((v10 & 0xF000000000000000) != 0xF000000000000000)
    {
      sub_1B082922C();
      v4 = sub_1B0E45748();
      if ((v4 & 1) == 0)
      {
        MEMORY[0x1E69E5920](v13);
        MEMORY[0x1E69E5920](v12);
        MEMORY[0x1E69E5920](v22);
        return v9;
      }

      sub_1B0391D50(v9, v10);
    }

    MEMORY[0x1E69E5920](v13);
    MEMORY[0x1E69E5920](v12);
    MEMORY[0x1E69E5920](v22);
    return 0;
  }

  if (v25 != 4)
  {
LABEL_38:
    v6 = sub_1B0E43008();
    MEMORY[0x1E69E5920](v22);
    return v6;
  }

  sub_1B0A79128();
  v20 = sub_1B08C0C38();
  sub_1B075D360();
  MEMORY[0x1E69E5928](v20);
  v21 = sub_1B075BDE4(v20);
  MEMORY[0x1E69E5928](v21);
  if (v21)
  {
    MEMORY[0x1E69E5928](v22);
    [v21 appendData_];
    MEMORY[0x1E69E5920](v22);
    MEMORY[0x1E69E5920](v21);
  }

  MEMORY[0x1E69E5928](v21);
  if (v21)
  {
    [v21 done];
    MEMORY[0x1E69E5920](v21);
  }

  v19 = [v20 data];
  if (v19)
  {
    v15 = sub_1B0E42F38();
    v16 = v1;
    MEMORY[0x1E69E5920](v19);
    v17 = v15;
    v18 = v16;
  }

  else
  {
    v17 = 0;
    v18 = 0xF000000000000000;
  }

  if ((v18 & 0xF000000000000000) == 0xF000000000000000)
  {
    goto LABEL_19;
  }

  sub_1B082922C();
  v2 = sub_1B0E45748();
  if (v2)
  {
    sub_1B0391D50(v17, v18);
LABEL_19:
    MEMORY[0x1E69E5920](v21);
    MEMORY[0x1E69E5920](v20);
    MEMORY[0x1E69E5920](v22);
    return 0;
  }

  MEMORY[0x1E69E5920](v21);
  MEMORY[0x1E69E5920](v20);
  MEMORY[0x1E69E5920](v22);
  return v17;
}

void *sub_1B0A74610(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v67 = a1;
  v78 = a2;
  v73 = a3;
  v66 = a4;
  v79 = sub_1B0A79120;
  v81 = sub_1B0901E30;
  v83 = sub_1B06BCD8C;
  v87 = sub_1B07AD0A4;
  v91 = sub_1B039BCF8;
  v93 = sub_1B0398F5C;
  v95 = sub_1B0398F5C;
  v97 = sub_1B03992D4;
  v99 = sub_1B0398F5C;
  v101 = sub_1B0398F5C;
  v104 = sub_1B039BCEC;
  v127 = 0;
  v126 = 0;
  v125 = 0;
  v124 = 0;
  v121 = 0uLL;
  v119 = 0;
  v120 = 0;
  v117 = 0;
  v118 = 0;
  v62 = 0;
  v63 = 0;
  v64 = *(_s6LoggerVMa_2(0) - 8);
  v74 = v64;
  v75 = *(v64 + 64);
  v65 = (v75 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v77 = v37 - v65;
  v68 = sub_1B0E439A8();
  v71 = *(v68 - 8);
  v69 = v68 - 8;
  v70 = (*(v71 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v67);
  v72 = v37 - v70;
  v127 = v5;
  v126 = v78;
  v125 = v6;
  v124 = v7;
  (*(v71 + 16))(v37 - v70, v4);
  sub_1B08F5590(v73, v77);
  v76 = (*(v74 + 80) + 16) & ~*(v74 + 80);
  v89 = 7;
  v82 = swift_allocObject();
  sub_1B0901DA8(v77, v82 + v76);
  sub_1B07B47AC(v78, v123);
  v80 = swift_allocObject();
  memcpy((v80 + 16), v78, 0x58uLL);

  v88 = 32;
  v8 = swift_allocObject();
  v9 = v80;
  v90 = v8;
  *(v8 + 16) = v79;
  *(v8 + 24) = v9;

  v108 = sub_1B0E43988();
  v109 = sub_1B0E458D8();
  v85 = 17;
  v94 = swift_allocObject();
  *(v94 + 16) = 0;
  v96 = swift_allocObject();
  v86 = 8;
  *(v96 + 16) = 8;
  v10 = swift_allocObject();
  v11 = v82;
  v84 = v10;
  *(v10 + 16) = v81;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v84;
  v98 = v12;
  *(v12 + 16) = v83;
  *(v12 + 24) = v13;
  v100 = swift_allocObject();
  *(v100 + 16) = 34;
  v102 = swift_allocObject();
  *(v102 + 16) = v86;
  v14 = swift_allocObject();
  v15 = v90;
  v92 = v14;
  *(v14 + 16) = v87;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v92;
  v105 = v16;
  *(v16 + 16) = v91;
  *(v16 + 24) = v17;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v103 = sub_1B0E46A48();
  v106 = v18;

  v19 = v94;
  v20 = v106;
  *v106 = v93;
  v20[1] = v19;

  v21 = v96;
  v22 = v106;
  v106[2] = v95;
  v22[3] = v21;

  v23 = v98;
  v24 = v106;
  v106[4] = v97;
  v24[5] = v23;

  v25 = v100;
  v26 = v106;
  v106[6] = v99;
  v26[7] = v25;

  v27 = v102;
  v28 = v106;
  v106[8] = v101;
  v28[9] = v27;

  v29 = v105;
  v30 = v106;
  v106[10] = v104;
  v30[11] = v29;
  sub_1B0394964();

  if (os_log_type_enabled(v108, v109))
  {
    v31 = v62;
    v54 = sub_1B0E45D78();
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v55 = sub_1B03949A8(0, v53, v53);
    v56 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v58 = &v114;
    v114 = v54;
    v59 = &v113;
    v113 = v55;
    v60 = &v112;
    v112 = v56;
    v57 = 2;
    sub_1B0394A48(2, &v114);
    sub_1B0394A48(v57, v58);
    v110 = v93;
    v111 = v94;
    sub_1B03949FC(&v110, v58, v59, v60);
    v61 = v31;
    if (v31)
    {

      __break(1u);
    }

    else
    {
      v110 = v95;
      v111 = v96;
      sub_1B03949FC(&v110, &v114, &v113, &v112);
      v52 = 0;
      v110 = v97;
      v111 = v98;
      sub_1B03949FC(&v110, &v114, &v113, &v112);
      v51 = 0;
      v110 = v99;
      v111 = v100;
      sub_1B03949FC(&v110, &v114, &v113, &v112);
      v50 = 0;
      v110 = v101;
      v111 = v102;
      sub_1B03949FC(&v110, &v114, &v113, &v112);
      v49 = 0;
      v110 = v104;
      v111 = v105;
      sub_1B03949FC(&v110, &v114, &v113, &v112);
      _os_log_impl(&dword_1B0389000, v108, v109, "[%lld] Inserting attachment data [%{public}s].", v54, 0x16u);
      sub_1B03998A8(v55, 0, v53);
      sub_1B03998A8(v56, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v108);
  (*(v71 + 8))(v72, v68);
  v47 = sub_1B0E44838();
  v48 = v32;
  v33 = sub_1B0E450E8();
  sub_1B0A6FBD0(v47, v48, v33);

  v128 = *(v67 + 80);
  result = sub_1B070B280(&v128, &v122);
  v129 = v128;
  if (*(&v128 + 1))
  {
    v42 = v129;
    v121 = v129;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v43 = sub_1B0A6A7C8(v42, *(&v42 + 1));
    v44 = v35;
    v119 = v43;
    v120 = v35;
    v45 = sub_1B0A73EE0();
    v46 = v36;
    if ((v36 & 0xF000000000000000) != 0xF000000000000000)
    {
      v40 = v45;
      v41 = v46;
      v39 = v46;
      v38 = v45;
      v117 = v45;
      v118 = v46;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03B2000(v38, v39);
      v37[1] = v116;
      v116[0] = v38;
      v116[1] = v39;
      v37[0] = v115;
      v115[0] = v43;
      v115[1] = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3CC0, &qword_1B0EA40D8);
      sub_1B0E44788();
      sub_1B0391D50(v38, v39);
    }
  }

  return result;
}

uint64_t sub_1B0A750E0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v115 = &v185;
  v124 = a5;
  v123 = a6;
  v122 = a4;
  v121 = a3;
  v129 = a2;
  v130 = a1;
  v116 = 0;
  v190 = 0;
  v189 = 0;
  v188 = 0;
  v187 = 0.0;
  v186 = 0;
  v6 = *a1;
  v192 = *(a1 + 1);
  v191 = v6;
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  v9 = *(a1 + 4);
  v196 = a1[10];
  v195 = v9;
  v194 = v8;
  v193 = v7;
  v198[9] = v192;
  v198[8] = v191;
  v199 = v196;
  v198[12] = v9;
  v198[11] = v8;
  v198[10] = v7;
  v117 = *(_s6LoggerVMa_2(0) - 8);
  v118 = v117;
  v119 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](0);
  v120 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1B0E439A8();
  v126 = *(v125 - 8);
  v127 = v126;
  v11 = MEMORY[0x1EEE9AC00](v129);
  v128 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = v13;
  v189 = v14;
  v188 = v15;
  v187 = v11;
  v186 = v16;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v184 = v129;
  sub_1B07B47AC(v130, &v183);
  v135 = v130;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3CA0, &qword_1B0EA3E00);
  v131 = v132;
  v133 = sub_1B0A791B8();
  sub_1B0E44FB8();
  v134 = 0;
  sub_1B07AD030(v130);
  sub_1B039E440(&v184);
  v17 = *v115;
  v18 = v115[1];
  v19 = v115[2];
  v170 = v115[3];
  v169 = v19;
  v168 = v18;
  v167 = v17;
  v20 = v115[4];
  v21 = v115[5];
  v22 = v115[6];
  v174 = v115[7];
  v173 = v22;
  v172 = v21;
  v171 = v20;
  v178 = v170;
  v177 = v169;
  v176 = v168;
  v175 = v167;
  v182 = v174;
  v181 = v22;
  v180 = v21;
  v179 = v20;
  if (sub_1B0A64ED8(&v175) == 1)
  {
    v23 = v134;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v158 = v124;
    sub_1B07B47AC(v130, &v157);
    v112 = &v59;
    MEMORY[0x1EEE9AC00](&v59);
    *(&v59 - 2) = v24;
    sub_1B0E44FB8();
    v113 = v23;
    if (v23)
    {
      sub_1B07AD030(v130);
      __break(1u);
    }

    else
    {
      sub_1B07AD030(v130);
      sub_1B039E440(&v158);
      v144 = v162;
      v143 = v161;
      v142 = v160;
      *&v141[88] = v159;
      v148 = v166;
      v147 = v165;
      v146 = v164;
      v145 = v163;
      v152 = v162;
      v151 = v161;
      v150 = v160;
      v149 = v159;
      v156 = v166;
      v155 = v165;
      v154 = v164;
      v153 = v163;
      v26 = sub_1B0A64ED8(&v149);
      if (v26 == 1)
      {
        (*(v127 + 16))(v128, v121, v125);
        sub_1B08F5590(v121, v120);
        v82 = (*(v118 + 80) + 16) & ~*(v118 + 80);
        v88 = swift_allocObject();
        sub_1B0901DA8(v120, v88 + v82);
        sub_1B07B47AC(v130, v141);
        v96 = 7;
        v27 = swift_allocObject();
        v28 = v130;
        v83 = v27;
        v29 = *v130;
        *(v27 + 32) = *(v130 + 1);
        *(v27 + 16) = v29;
        v30 = *(v28 + 2);
        v31 = *(v28 + 3);
        v32 = *(v28 + 4);
        *(v27 + 96) = v28[10];
        *(v27 + 80) = v32;
        *(v27 + 64) = v31;
        *(v27 + 48) = v30;

        v95 = 32;
        v33 = swift_allocObject();
        v34 = v83;
        v97 = v33;
        *(v33 + 16) = sub_1B0A79120;
        *(v33 + 24) = v34;

        v110 = sub_1B0E43988();
        v84 = v110;
        v109 = sub_1B0E458D8();
        v85 = v109;
        v91 = 17;
        v100 = swift_allocObject();
        v86 = v100;
        *(v100 + 16) = 0;
        v101 = swift_allocObject();
        v87 = v101;
        v93 = 8;
        *(v101 + 16) = 8;
        v35 = swift_allocObject();
        v36 = v88;
        v89 = v35;
        *(v35 + 16) = sub_1B0901E30;
        *(v35 + 24) = v36;
        v37 = swift_allocObject();
        v38 = v89;
        v102 = v37;
        v90 = v37;
        *(v37 + 16) = sub_1B06BCD8C;
        *(v37 + 24) = v38;
        v103 = swift_allocObject();
        v92 = v103;
        *(v103 + 16) = 34;
        v104 = swift_allocObject();
        v94 = v104;
        *(v104 + 16) = v93;
        v39 = swift_allocObject();
        v40 = v97;
        v98 = v39;
        *(v39 + 16) = sub_1B07AD0A4;
        *(v39 + 24) = v40;
        v41 = swift_allocObject();
        v42 = v98;
        v107 = v41;
        v99 = v41;
        *(v41 + 16) = sub_1B039BCF8;
        *(v41 + 24) = v42;
        v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v105 = sub_1B0E46A48();
        v106 = v43;

        v44 = v100;
        v45 = v106;
        *v106 = sub_1B0398F5C;
        v45[1] = v44;

        v46 = v101;
        v47 = v106;
        v106[2] = sub_1B0398F5C;
        v47[3] = v46;

        v48 = v102;
        v49 = v106;
        v106[4] = sub_1B03992D4;
        v49[5] = v48;

        v50 = v103;
        v51 = v106;
        v106[6] = sub_1B0398F5C;
        v51[7] = v50;

        v52 = v104;
        v53 = v106;
        v106[8] = sub_1B0398F5C;
        v53[9] = v52;

        v54 = v106;
        v55 = v107;
        v106[10] = sub_1B039BCEC;
        v54[11] = v55;
        sub_1B0394964();

        if (os_log_type_enabled(v110, v109))
        {
          v57 = v113;
          v75 = sub_1B0E45D78();
          v72 = v75;
          v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v76 = sub_1B03949A8(0, v73, v73);
          v74 = v76;
          v77 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v140 = v75;
          v139 = v76;
          v138 = v77;
          v78 = 2;
          v79 = &v140;
          sub_1B0394A48(2, &v140);
          sub_1B0394A48(v78, v79);
          v136 = sub_1B0398F5C;
          v137 = v86;
          sub_1B03949FC(&v136, v79, &v139, &v138);
          v80 = v57;
          v81 = v57;
          if (v57)
          {
            v70 = 0;

            __break(1u);
          }

          else
          {
            v136 = sub_1B0398F5C;
            v137 = v87;
            sub_1B03949FC(&v136, &v140, &v139, &v138);
            v68 = 0;
            v69 = 0;
            v136 = sub_1B03992D4;
            v137 = v90;
            sub_1B03949FC(&v136, &v140, &v139, &v138);
            v66 = 0;
            v67 = 0;
            v136 = sub_1B0398F5C;
            v137 = v92;
            sub_1B03949FC(&v136, &v140, &v139, &v138);
            v64 = 0;
            v65 = 0;
            v136 = sub_1B0398F5C;
            v137 = v94;
            sub_1B03949FC(&v136, &v140, &v139, &v138);
            v62 = 0;
            v63 = 0;
            v136 = sub_1B039BCEC;
            v137 = v99;
            sub_1B03949FC(&v136, &v140, &v139, &v138);
            v60 = 0;
            v61 = 0;
            _os_log_impl(&dword_1B0389000, v84, v85, "[%lld] Skipping attachment [%{public}s].", v72, 0x16u);
            sub_1B03998A8(v74, 0, v73);
            sub_1B03998A8(v77, 1, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();

            v71 = v60;
          }
        }

        else
        {
          v58 = v113;

          v71 = v58;
        }

        v59 = v71;

        (*(v127 + 8))(v128, v125);
        return v59;
      }
    }

    v198[3] = v152;
    v198[2] = v151;
    v198[1] = v150;
    v198[0] = v149;
    v198[7] = v156;
    v198[6] = v155;
    v198[5] = v154;
    v198[4] = v153;
    sub_1B0A74610(v198, v130, v121, v122);
    sub_1B08C5168(&v149);
    return v113;
  }

  v197[3] = v178;
  v197[2] = v177;
  v197[1] = v176;
  v197[0] = v175;
  v197[7] = v182;
  v197[6] = v181;
  v197[5] = v180;
  v197[4] = v179;
  sub_1B0A73370(v197, v130, v121, v122, v123);
  sub_1B08C5168(&v175);
  return v134;
}

uint64_t sub_1B0A75E68(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = *a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v5, v4);

  return v6 & 1;
}

uint64_t sub_1B0A75F20@<X0>(uint64_t a1@<X8>)
{
  v4 = *(_s6ParserVMa(0) + 28);
  v2 = sub_1B0E431A8();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1B0A75F98(uint64_t a1)
{
  v12 = a1;
  v7 = 0;
  v11 = sub_1B0E431A8();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v11);
  v8 = &v5 - v6;
  (*(v9 + 16))(v2);
  v3 = _s6ParserVMa(v7);
  (*(v9 + 40))(v1 + *(v3 + 28), v8, v11);
  return (*(v9 + 8))(v12, v11);
}

uint64_t sub_1B0A760B8()
{
  v2 = *(v0 + *(_s6ParserVMa(0) + 32));

  return v2;
}

uint64_t sub_1B0A760F0(uint64_t a1)
{

  *(v1 + *(_s6ParserVMa(0) + 32)) = a1;
}

uint64_t sub_1B0A7613C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a6;
  v12 = _s6ParserVMa(0);
  v8 = *(v12 + 28);
  v6 = sub_1B0E431A8();
  (*(*(v6 - 8) + 32))(a5 + v8, a3);
  result = v12;
  *(a5 + *(v12 + 32)) = a4;
  return result;
}

char *sub_1B0A761E4(char *a1, char *a2)
{
  v4 = *a1;

  *a2 = v4;
  *(a2 + 1) = *(a1 + 1);
  *(a2 + 2) = *(a1 + 2);
  v6 = _s6ParserVMa(0);
  v5 = *(v6 + 28);
  v2 = sub_1B0E431A8();
  (*(*(v2 - 8) + 16))(&a2[v5], &a1[v5]);
  v9 = *(v6 + 32);
  v10 = *&a1[v9];

  result = a2;
  *&a2[v9] = v10;
  return result;
}

uint64_t _s6ParserV4TextVMa(uint64_t a1)
{
  v2 = qword_1EB6E3D10;
  if (!qword_1EB6E3D10)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

double sub_1B0A76348()
{
  v2 = v0[2];
  MEMORY[0x1E69E5928](*v0);

  return v2;
}

uint64_t sub_1B0A763A8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  MEMORY[0x1E69E5928](a1);

  v5 = *v4;
  *v4 = a1;
  *(v4 + 1) = a2;
  v4[2] = a4;
  *(v4 + 3) = a3;
  MEMORY[0x1E69E5920](v5);

  MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1B0A76440()
{
  v2 = *(v0 + 32);
  sub_1B03B2000(v2, *(v0 + 40));
  return v2;
}

uint64_t sub_1B0A76478(uint64_t a1, unint64_t a2)
{
  sub_1B03B2000(a1, a2);
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  sub_1B0391D50(v3, v4);
  return sub_1B0391D50(a1, a2);
}

uint64_t sub_1B0A76500(uint64_t a1)
{
  v8 = a1;
  v6 = 0;
  v5 = (*(*(type metadata accessor for MessageSummary.Accumulator(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v5;
  sub_1B08C49A4(v2, &v5 - v5);
  v3 = _s6ParserV4TextVMa(v6);
  sub_1B0A79240(v7, (v1 + *(v3 + 24)));
  return sub_1B08C4E3C(v8);
}

double sub_1B0A765CC(double a1)
{
  v2 = _s6ParserV4TextVMa(0);
  result = a1;
  *(v1 + *(v2 + 28)) = a1;
  return result;
}

uint64_t sub_1B0A7662C(unsigned int a1)
{
  v2 = _s6ParserV4TextVMa(0);
  result = a1;
  *(v1 + *(v2 + 32)) = a1;
  return result;
}

uint64_t sub_1B0A76668()
{
  v2 = *(v0 + *(_s6ParserV4TextVMa(0) + 36));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B0A766A0(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v1 + *(_s6ParserV4TextVMa(0) + 36)) = a1;
}

int *sub_1B0A766EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a10;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  v17 = _s6ParserV4TextVMa(0);
  sub_1B0A79E60(a6, (a9 + v17[6]));
  result = v17;
  *(a9 + v17[7]) = a11;
  *(a9 + v17[8]) = a7;
  *(a9 + v17[9]) = a8;
  return result;
}

uint64_t sub_1B0A7678C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a1;
  v41 = a2;
  v36 = a4;
  v37 = a5;
  v39 = sub_1B0A7934C;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v54 = &v68;
  v68 = 0u;
  v69 = 0u;
  v53 = &v66;
  v66 = 0;
  v67 = 0;
  v51 = &v65;
  v65 = 0;
  v38 = &v64;
  v64 = 0;
  v34 = 0;
  v20 = (*(*(_s6ParserV4TextVMa(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v50 = (&v20 - v20);
  v75 = &v20 - v20;
  v29 = sub_1B0E431A8();
  v27 = *(v29 - 8);
  v28 = v29 - 8;
  v21 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34);
  v31 = &v20 - v21;
  v7 = type metadata accessor for MessageSummary.Accumulator(v6);
  v22 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v20 - v22;
  v23 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v20 - v22);
  v52 = &v20 - v23;
  v74 = &v20 - v23;
  v73 = v9;
  v72 = a3;
  v71 = v10;
  v70 = v11;
  v24 = v9[1];
  v25 = v9[2];
  v26 = *v9;

  sub_1B0A7AE10();
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  *&v68 = v12;
  *(&v68 + 1) = v13;
  *&v69 = v14;
  *(&v69 + 1) = v15;
  v66 = sub_1B0A6D998(v12);
  v67 = v16;
  v35 = _s6ParserVMa(v34);
  v30 = *(v41 + *(v35 + 32));

  (*(v27 + 16))(v31, v41 + *(v35 + 28), v29);
  v32 = sub_1B07575C4();
  v33 = v17;
  v18 = sub_1B08C4650();
  sub_1B08C4674(500, v30, v31, v32, v33, v18, v52);
  v65 = sub_1B0E46A48();
  v64 = 0;
  v40 = *(v41 + *(v35 + 32));

  v57 = v36;
  v58 = v37;
  v59 = v54;
  v60 = v38;
  v61 = v53;
  v62 = v52;
  v63 = v51;
  Message.enumeratePartsForDisplay(strategy:maximumByteCountPerPart:cache:closure:)(0, 1000000, v40, v39, v56);

  v42 = v68;
  v43 = v69;
  MEMORY[0x1E69E5928](v68);

  v44 = v66;
  v45 = v67;
  sub_1B03B2000(v66, v67);
  sub_1B08C49A4(v52, v46);
  v47 = *(v41 + 16);
  v48 = v65;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0A766EC(v42, *(&v42 + 1), *(&v43 + 1), v44, v45, v46, 1, v48, v50, *&v43, v47);
  sub_1B0A77C9C(v50, v49);
  v55 = v64;
  sub_1B08F5CB4(v50);
  sub_1B039E440(v51);
  sub_1B08C4E3C(v52);
  sub_1B075D3E8(v53);
  sub_1B0A7936C(v54);
  return v55 & 1;
}

__n128 sub_1B0A76D34(_OWORD *a1, _OWORD *a2)
{
  *a2 = *a1;
  a2[1] = a1[1];
  a2[2] = a1[2];
  v9 = _s6ParserV4TextVMa(0);
  v2 = v9[6];
  v7 = a1 + v2;
  v8 = a2 + v2;
  *v8 = *(a1 + v2);
  *(v8 + 1) = *(a1 + v2 + 8);
  v6 = type metadata accessor for MessageSummary.Accumulator(0);
  v5 = v6[6];
  v3 = sub_1B0E431A8();
  (*(*(v3 - 8) + 32))(&v8[v5], &v7[v5]);
  result = *&v7[v6[7]];
  *&v8[v6[7]] = result;
  *&v8[v6[8]] = *&v7[v6[8]];
  *(a2 + v9[7]) = *(a1 + v9[7]);
  *(a2 + v9[8]) = *(a1 + v9[8]);
  *(a2 + v9[9]) = *(a1 + v9[9]);
  return result;
}

uint64_t *sub_1B0A76E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v111 = a2;
  v121 = a3;
  v106 = a4;
  v107 = a5;
  v108 = a6;
  v109 = a7;
  v110 = a8;
  v128 = sub_1B0901E30;
  v132 = sub_1B06BCD8C;
  v134 = sub_1B0398F5C;
  v136 = sub_1B0398F5C;
  v139 = sub_1B03992D4;
  v97 = sub_1B0901E30;
  v98 = sub_1B06BCD8C;
  v99 = sub_1B0398F5C;
  v100 = sub_1B0398F5C;
  v101 = sub_1B03992D4;
  v166 = 0;
  v165 = 0;
  v164 = 0;
  v163 = 0;
  v162 = 0;
  v161 = 0;
  v160 = 0;
  v159 = 0;
  v102 = 0;
  v158 = 0;
  v103 = 0;
  v104 = *(_s6LoggerVMa_2(0) - 8);
  v122 = v104;
  v123 = *(v104 + 64);
  v105 = (v123 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v126 = &v49 - v105;
  v118 = sub_1B0E439A8();
  v116 = *(v118 - 8);
  v117 = v118 - 8;
  v112 = (v116[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v111);
  v113 = &v49 - v112;
  v114 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v115 = &v49 - v114;
  v166 = a1;
  v165 = v11;
  v164 = v12;
  v163 = v13;
  v162 = v14;
  v161 = v15;
  v160 = v16;
  v159 = v17;
  sub_1B0A6AE24(v11, v167);
  v119 = v116[2];
  v120 = v116 + 2;
  v119(v115, v121, v118);
  sub_1B08F5590(v121, v126);
  v124 = *(v122 + 80);
  v125 = (v124 + 16) & ~v124;
  v130 = 7;
  v131 = swift_allocObject();
  sub_1B0901DA8(v126, v131 + v125);
  v143 = sub_1B0E43988();
  v144 = sub_1B0E458D8();
  v127 = 17;
  v135 = swift_allocObject();
  *(v135 + 16) = 0;
  v137 = swift_allocObject();
  *(v137 + 16) = 8;
  v129 = 32;
  v18 = swift_allocObject();
  v19 = v131;
  v133 = v18;
  *(v18 + 16) = v128;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  v21 = v133;
  v140 = v20;
  *(v20 + 16) = v132;
  *(v20 + 24) = v21;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v138 = sub_1B0E46A48();
  v141 = v22;

  v23 = v135;
  v24 = v141;
  *v141 = v134;
  v24[1] = v23;

  v25 = v137;
  v26 = v141;
  v141[2] = v136;
  v26[3] = v25;

  v27 = v140;
  v28 = v141;
  v141[4] = v139;
  v28[5] = v27;
  sub_1B0394964();

  if (os_log_type_enabled(v143, v144))
  {
    v29 = v102;
    v90 = sub_1B0E45D78();
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v89 = 0;
    v91 = sub_1B03949A8(0, v88, v88);
    v92 = sub_1B03949A8(v89, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v93 = &v149;
    v149 = v90;
    v94 = &v148;
    v148 = v91;
    v95 = &v147;
    v147 = v92;
    sub_1B0394A48(0, &v149);
    sub_1B0394A48(1, v93);
    v145 = v134;
    v146 = v135;
    sub_1B03949FC(&v145, v93, v94, v95);
    v96 = v29;
    if (v29)
    {

      __break(1u);
    }

    else
    {
      v145 = v136;
      v146 = v137;
      sub_1B03949FC(&v145, &v149, &v148, &v147);
      v86 = 0;
      v145 = v139;
      v146 = v140;
      sub_1B03949FC(&v145, &v149, &v148, &v147);
      v85 = 0;
      _os_log_impl(&dword_1B0389000, v143, v144, "[%lld] Appending part to accumulators.", v90, 0xCu);
      v84 = 0;
      sub_1B03998A8(v91, 0, v88);
      sub_1B03998A8(v92, v84, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();

      v87 = v85;
    }
  }

  else
  {
    v30 = v102;

    v87 = v30;
  }

  v31 = v87;
  MEMORY[0x1E69E5920](v143);
  v81 = v116[1];
  v82 = v116 + 1;
  v81(v115, v118);
  sub_1B0A7AE3C(v167, v111);
  v83 = v31;
  if (v31)
  {
    v34 = v113;
    v62 = v83;
    v61 = 0;
    v35 = v83;
    v158 = v62;
    v119(v34, v121, v118);
    sub_1B08F5590(v121, v126);
    v63 = (v124 + 16) & ~v124;
    v66 = 7;
    v67 = swift_allocObject();
    sub_1B0901DA8(v126, v67 + v63);
    v74 = sub_1B0E43988();
    v75 = sub_1B0E458D8();
    v64 = 17;
    v69 = swift_allocObject();
    *(v69 + 16) = 0;
    v70 = swift_allocObject();
    *(v70 + 16) = 8;
    v65 = 32;
    v36 = swift_allocObject();
    v37 = v67;
    v68 = v36;
    *(v36 + 16) = v97;
    *(v36 + 24) = v37;
    v38 = swift_allocObject();
    v39 = v68;
    v72 = v38;
    *(v38 + 16) = v98;
    *(v38 + 24) = v39;
    v71 = sub_1B0E46A48();
    v73 = v40;

    v41 = v69;
    v42 = v73;
    *v73 = v99;
    v42[1] = v41;

    v43 = v70;
    v44 = v73;
    v73[2] = v100;
    v44[3] = v43;

    v45 = v72;
    v46 = v73;
    v73[4] = v101;
    v46[5] = v45;
    sub_1B0394964();

    if (os_log_type_enabled(v74, v75))
    {
      v47 = v61;
      v54 = sub_1B0E45D78();
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v53 = 0;
      v55 = sub_1B03949A8(0, v52, v52);
      v56 = sub_1B03949A8(v53, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v57 = &v154;
      v154 = v54;
      v58 = &v153;
      v153 = v55;
      v59 = &v152;
      v152 = v56;
      sub_1B0394A48(0, &v154);
      sub_1B0394A48(1, v57);
      v150 = v99;
      v151 = v69;
      sub_1B03949FC(&v150, v57, v58, v59);
      v60 = v47;
      if (v47)
      {

        __break(1u);
      }

      else
      {
        v150 = v100;
        v151 = v70;
        sub_1B03949FC(&v150, &v154, &v153, &v152);
        v51 = 0;
        v150 = v101;
        v151 = v72;
        sub_1B03949FC(&v150, &v154, &v153, &v152);
        _os_log_impl(&dword_1B0389000, v74, v75, "[%lld] Unable to append HTML.", v54, 0xCu);
        v50 = 0;
        sub_1B03998A8(v55, 0, v52);
        sub_1B03998A8(v56, v50, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v74);
    v81(v113, v118);
    v48 = v62;
    *v107 = 1;
  }

  v79 = v167;
  sub_1B0A6D9F4(v167);
  sub_1B08C4788(v79);
  sub_1B0A6BD78(v79, v157);
  v80 = v168;
  memcpy(v168, v79, sizeof(v168));
  if (sub_1B08C4EF0(v168) == 2)
  {
    v32 = sub_1B08C4F00(v168);
    v78 = __dst;
    v76 = 128;
    memcpy(__dst, v32, sizeof(__dst));
    sub_1B08C4F88(__dst, v156);
    v77 = v155;
    memcpy(v155, v78, v76);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3CA0, &qword_1B0EA3E00);
    sub_1B0E452E8();
    sub_1B08C5168(v78);
  }

  else
  {
    sub_1B0A79CD8(v167);
  }

  result = v167;
  sub_1B0A79CD8(v167);
  return result;
}

uint64_t sub_1B0A77B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = 0u;
  v19 = 0u;
  v23 = a1;
  v22 = a2;
  v21 = a3;
  v20 = a4;

  sub_1B0A7AE10();
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  *&v18 = v4;
  *(&v18 + 1) = v5;
  *&v19 = v6;
  *(&v19 + 1) = v7;
  v12 = *(a1 + *(_s6ParserVMa(0) + 32));

  v15 = a3;
  v16 = &v18;
  v17 = a4;
  Message.enumeratePartsForDisplay(strategy:maximumByteCountPerPart:cache:closure:)(1, 1000000, v12, sub_1B0A793AC, v14);

  v13 = v18;
  MEMORY[0x1E69E5928](v18);

  sub_1B0A7936C(&v18);
  return v13;
}

void *sub_1B0A77C9C(void *a1, void *a2)
{
  v5 = *a1;
  MEMORY[0x1E69E5928](*a1);
  *a2 = v5;
  a2[1] = a1[1];
  a2[2] = a1[2];
  v6 = a1[3];

  a2[3] = v6;
  v7 = a1[4];
  v8 = a1[5];
  sub_1B03B2000(v7, v8);
  a2[4] = v7;
  a2[5] = v8;
  v19 = _s6ParserV4TextVMa(0);
  v14 = a1 + v19[6];
  v17 = a2 + v19[6];
  *v17 = *v14;
  v9 = *(v14 + 1);

  *(v17 + 1) = v9;
  v11 = type metadata accessor for MessageSummary.Accumulator(0);
  v10 = v11[6];
  v2 = sub_1B0E431A8();
  (*(*(v2 - 8) + 16))(&v17[v10], &v14[v10]);
  v3 = &v14[v11[7]];
  v12 = &v17[v11[7]];
  *v12 = *v3;
  v13 = *(v3 + 1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v12 + 1) = v13;
  v16 = v11[8];
  v18 = *&v14[v16];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *&v17[v16] = v18;
  *(a2 + v19[7]) = *(a1 + v19[7]);
  *(a2 + v19[8]) = *(a1 + v19[8]);
  v21 = v19[9];
  v22 = *(a1 + v21);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *(a2 + v21) = v22;
  return result;
}

uint64_t sub_1B0A77EC8(uint64_t a1)
{
  if ((*(a1 + 16) & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_1B0391D50(*(a1 + 8), *(a1 + 16));
  }

  if ((*(a1 + 32) & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_1B0391D50(*(a1 + 24), *(a1 + 32));
  }

  return a1;
}

uint64_t sub_1B0A77F6C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  if ((*(a1 + 16) & 0xF000000000000000) == 0xF000000000000000)
  {
    *(a2 + 8) = *(a1 + 8);
  }

  else
  {
    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    sub_1B03B2000(v8, v9);
    *(a2 + 8) = v8;
    *(a2 + 16) = v9;
  }

  if ((*(a1 + 32) & 0xF000000000000000) == 0xF000000000000000)
  {
    *(a2 + 24) = *(a1 + 24);
  }

  else
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    sub_1B03B2000(v6, v7);
    *(a2 + 24) = v6;
    *(a2 + 32) = v7;
  }

  *(a2 + 40) = *(a1 + 40);
  v3 = *(a1 + 48);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 48) = v3;
  *(a2 + 56) = *(a1 + 56);
  v4 = *(a1 + 64);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 64) = v4;
  v5 = *(a1 + 72);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *(a2 + 72) = v5;
  return result;
}

uint64_t sub_1B0A780BC(uint64_t *a1, uint64_t a2)
{
  if ((a1[1] & 0xF000000000000000) == 0xF000000000000000)
  {
    *a2 = *a1;
  }

  else
  {
    v3 = *a1;
    v4 = a1[1];
    sub_1B03B2000(*a1, v4);
    *a2 = v3;
    *(a2 + 8) = v4;
  }

  return a2;
}

unint64_t sub_1B0A78140()
{
  v2 = qword_1EB6E3C80;
  if (!qword_1EB6E3C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3C70, &unk_1B0EA40B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3C80);
    return WitnessTable;
  }

  return v2;
}

void sub_1B0A781D0(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v88 = a1;
  v100 = a2;
  v95 = a3;
  v87 = a4;
  v107 = sub_1B0901E30;
  v111 = sub_1B06BCD8C;
  v113 = sub_1B0398F5C;
  v115 = sub_1B0398F5C;
  v118 = sub_1B03992D4;
  v78 = sub_1B0901E30;
  v79 = sub_1B06BCD8C;
  v80 = sub_1B0398F5C;
  v81 = sub_1B0398F5C;
  v82 = sub_1B03992D4;
  v138 = 0;
  v137 = 0;
  v136 = 0;
  v135 = 0;
  v83 = 0;
  v134 = 0;
  v84 = 0;
  v85 = *(_s6LoggerVMa_2(0) - 8);
  v101 = v85;
  v102 = *(v85 + 64);
  v86 = (v102 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v105 = v37 - v86;
  v89 = sub_1B0E439A8();
  v96 = *(v89 - 8);
  v90 = v89 - 8;
  v92 = v96[8];
  v91 = (v92 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v88);
  v93 = v37 - v91;
  v94 = (v92 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v97 = v37 - v94;
  v138 = v6;
  v137 = v7;
  v136 = v95;
  v135 = v8;
  v98 = v96[2];
  v99 = v96 + 2;
  v98(v37 - v94, v5);
  sub_1B08F5590(v100, v105);
  v103 = *(v101 + 80);
  v104 = (v103 + 16) & ~v103;
  v109 = 7;
  v110 = swift_allocObject();
  sub_1B0901DA8(v105, v110 + v104);
  v122 = sub_1B0E43988();
  v123 = sub_1B0E458D8();
  v106 = 17;
  v114 = swift_allocObject();
  *(v114 + 16) = 0;
  v116 = swift_allocObject();
  *(v116 + 16) = 8;
  v108 = 32;
  v9 = swift_allocObject();
  v10 = v110;
  v112 = v9;
  *(v9 + 16) = v107;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v112;
  v119 = v11;
  *(v11 + 16) = v111;
  *(v11 + 24) = v12;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v117 = sub_1B0E46A48();
  v120 = v13;

  v14 = v114;
  v15 = v120;
  *v120 = v113;
  v15[1] = v14;

  v16 = v116;
  v17 = v120;
  v120[2] = v115;
  v17[3] = v16;

  v18 = v119;
  v19 = v120;
  v120[4] = v118;
  v19[5] = v18;
  sub_1B0394964();

  if (os_log_type_enabled(v122, v123))
  {
    v20 = v83;
    v71 = sub_1B0E45D78();
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v70 = 0;
    v72 = sub_1B03949A8(0, v69, v69);
    v73 = sub_1B03949A8(v70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v74 = &v128;
    v128 = v71;
    v75 = &v127;
    v127 = v72;
    v76 = &v126;
    v126 = v73;
    sub_1B0394A48(0, &v128);
    sub_1B0394A48(1, v74);
    v124 = v113;
    v125 = v114;
    sub_1B03949FC(&v124, v74, v75, v76);
    v77 = v20;
    if (v20)
    {

      __break(1u);
    }

    else
    {
      v124 = v115;
      v125 = v116;
      sub_1B03949FC(&v124, &v128, &v127, &v126);
      v67 = 0;
      v124 = v118;
      v125 = v119;
      sub_1B03949FC(&v124, &v128, &v127, &v126);
      v66 = 0;
      _os_log_impl(&dword_1B0389000, v122, v123, "[%lld] Appending part to accumulators.", v71, 0xCu);
      v65 = 0;
      sub_1B03998A8(v72, 0, v69);
      sub_1B03998A8(v73, v65, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();

      v68 = v66;
    }
  }

  else
  {
    v21 = v83;

    v68 = v21;
  }

  v22 = v68;
  MEMORY[0x1E69E5920](v122);
  v62 = v96[1];
  v63 = v96 + 1;
  v62(v97, v89);
  sub_1B0A7AE3C(v88, v87);
  v64 = v22;
  if (v22)
  {
    v23 = v93;
    v48 = v64;
    v47 = 0;
    v24 = v64;
    v134 = v48;
    (v98)(v23, v100, v89);
    sub_1B08F5590(v100, v105);
    v49 = (v103 + 16) & ~v103;
    v52 = 7;
    v53 = swift_allocObject();
    sub_1B0901DA8(v105, v53 + v49);
    v60 = sub_1B0E43988();
    v61 = sub_1B0E458D8();
    v50 = 17;
    v55 = swift_allocObject();
    *(v55 + 16) = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = 8;
    v51 = 32;
    v25 = swift_allocObject();
    v26 = v53;
    v54 = v25;
    *(v25 + 16) = v78;
    *(v25 + 24) = v26;
    v27 = swift_allocObject();
    v28 = v54;
    v58 = v27;
    *(v27 + 16) = v79;
    *(v27 + 24) = v28;
    v57 = sub_1B0E46A48();
    v59 = v29;

    v30 = v55;
    v31 = v59;
    *v59 = v80;
    v31[1] = v30;

    v32 = v56;
    v33 = v59;
    v59[2] = v81;
    v33[3] = v32;

    v34 = v58;
    v35 = v59;
    v59[4] = v82;
    v35[5] = v34;
    sub_1B0394964();

    if (os_log_type_enabled(v60, v61))
    {
      v36 = v47;
      v40 = sub_1B0E45D78();
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v39 = 0;
      v41 = sub_1B03949A8(0, v38, v38);
      v42 = sub_1B03949A8(v39, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v43 = &v133;
      v133 = v40;
      v44 = &v132;
      v132 = v41;
      v45 = &v131;
      v131 = v42;
      sub_1B0394A48(0, &v133);
      sub_1B0394A48(1, v43);
      v129 = v80;
      v130 = v55;
      sub_1B03949FC(&v129, v43, v44, v45);
      v46 = v36;
      if (v36)
      {

        __break(1u);
      }

      else
      {
        v129 = v81;
        v130 = v56;
        sub_1B03949FC(&v129, &v133, &v132, &v131);
        v37[1] = 0;
        v129 = v82;
        v130 = v58;
        sub_1B03949FC(&v129, &v133, &v132, &v131);
        _os_log_impl(&dword_1B0389000, v60, v61, "[%lld] Unable to append HTML.", v40, 0xCu);
        v37[0] = 0;
        sub_1B03998A8(v41, 0, v38);
        sub_1B03998A8(v42, v37[0], MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v60);
    v62(v93, v89);
  }
}

unint64_t sub_1B0A79128()
{
  v2 = qword_1EB6E3CD0;
  if (!qword_1EB6E3CD0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6E3CD0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B0A791B8()
{
  v2 = qword_1EB6E3CF0;
  if (!qword_1EB6E3CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E3CA0, &qword_1B0EA3E00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3CF0);
    return WitnessTable;
  }

  return v2;
}

char *sub_1B0A79240(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);

  v7 = type metadata accessor for MessageSummary.Accumulator(0);
  v6 = v7[6];
  v2 = sub_1B0E431A8();
  (*(*(v2 - 8) + 40))(&a2[v6], &a1[v6]);
  v3 = &a1[v7[7]];
  v4 = &a2[v7[7]];
  *v4 = *v3;
  *(v4 + 1) = *(v3 + 1);

  *&a2[v7[8]] = *&a1[v7[8]];

  return a2;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = HIBYTE(*(a1 + 8)) >> 4;
  v2 = 15 - (((4 * v1) | (v1 >> 2)) & 0xF);
  if (v2 >= 0xC)
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1B0A794F0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 48)))
      {
        v3 = *(a1 + 48);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B0A79608(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1B0A79854(uint64_t a1)
{
  v5 = type metadata accessor for WatchOSRender.HTMLParser();
  if (v1 <= 0x3F)
  {
    v5 = sub_1B0E431A8();
    if (v2 <= 0x3F)
    {
      v5 = type metadata accessor for Cache();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v5;
}

unint64_t sub_1B0A799C8(uint64_t a1)
{
  v4 = type metadata accessor for MessageSummary.Accumulator(319);
  if (v1 <= 0x3F)
  {
    v4 = sub_1B0A79AD4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

unint64_t sub_1B0A79AD4(uint64_t a1)
{
  v5 = qword_1EB6E3D20;
  if (!qword_1EB6E3D20)
  {
    v4 = sub_1B0E45358();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EB6E3D20);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_1B0A79B68(uint64_t a1)
{
  if ((*(a1 + 8) & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_1B0391D50(*a1, *(a1 + 8));
  }

  if ((*(a1 + 24) & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_1B0391D50(*(a1 + 16), *(a1 + 24));
  }

  return a1;
}

unint64_t sub_1B0A79BE8()
{
  v2 = qword_1EB6E3D30;
  if (!qword_1EB6E3D30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3D30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A79C60()
{
  v2 = qword_1EB6E3D38;
  if (!qword_1EB6E3D38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3D38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A79D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, unsigned __int8 a16)
{
  v23 = a16 >> 6;
  if (!(a16 >> 6) || v23 == 1)
  {
  }

  if (v23 == 2)
  {

    sub_1B07ACE18(a2, a3, a4, a5, a6);

    sub_1B08C512C(a8, a9);
  }

  return result;
}

__n128 sub_1B0A79E60(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  v5 = type metadata accessor for MessageSummary.Accumulator(0);
  v4 = v5[6];
  v2 = sub_1B0E431A8();
  (*(*(v2 - 8) + 32))(&a2[v4], &a1[v4]);
  result = *&a1[v5[7]];
  *&a2[v5[7]] = result;
  *&a2[v5[8]] = *&a1[v5[8]];
  return result;
}

uint64_t sub_1B0A79F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v106 = a1;
  v113 = a2;
  v103 = a3;
  v104 = a5;
  v105 = a4;
  v87 = sub_1B0901E30;
  v88 = sub_1B06BCD8C;
  v89 = sub_1B07135E4;
  v90 = sub_1B070B324;
  v91 = sub_1B0398F5C;
  v92 = sub_1B0398F5C;
  v93 = sub_1B03992D4;
  v94 = sub_1B0398F5C;
  v95 = sub_1B0398F5C;
  v96 = sub_1B070B4B4;
  v127 = *MEMORY[0x1E69E9840];
  v123 = 0;
  v121 = 0u;
  v122 = 0u;
  v120 = 0;
  v118 = 0;
  v97 = 0;
  v98 = *(_s6LoggerVMa_2(0) - 8);
  v99 = v98;
  v100 = *(v98 + 64);
  v101 = (v100 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v102 = v39 - v101;
  v107 = sub_1B0E439A8();
  v108 = *(v107 - 8);
  v109 = v107 - 8;
  v110 = (*(v108 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v106);
  v111 = v39 - v110;
  v123 = v6;
  *&v121 = v7;
  *(&v121 + 1) = v8;
  *&v122 = v5;
  *(&v122 + 1) = v9;
  v112 = objc_opt_self();
  MEMORY[0x1E69E5928](v113);
  v114 = [v112 trimAttributedString_];
  MEMORY[0x1E69E5920](v113);
  if (!v114)
  {
    goto LABEL_8;
  }

  v86 = v114;
  v82 = v114;
  v120 = v114;
  v84 = [v114 string];
  sub_1B0E44AD8();
  v83 = v10;
  v85 = sub_1B0E44DA8();

  MEMORY[0x1E69E5920](v84);
  if (v85)
  {
    MEMORY[0x1E69E5920](v82);
LABEL_8:
    v76 = 0;
    v77 = 0xF000000000000000;
    goto LABEL_9;
  }

  v126 = 0;
  v79 = objc_opt_self();
  MEMORY[0x1E69E5928](v82);
  v119 = v126;
  v81 = [v79 archivedDataWithRootObject:v82 requiringSecureCoding:1 error:&v119];
  v80 = v119;
  MEMORY[0x1E69E5928](v119);
  v11 = v126;
  v126 = v80;
  MEMORY[0x1E69E5920](v11);
  swift_unknownObjectRelease();
  if (v81)
  {
    v78 = v81;
    v73 = v81;
    v74 = sub_1B0E42F38();
    v75 = v12;
    MEMORY[0x1E69E5920](v73);
    MEMORY[0x1E69E5920](v82);
    v76 = v74;
    v77 = v75;
  }

  else
  {
    v49 = v126;
    v52 = sub_1B0E42CD8();
    MEMORY[0x1E69E5920](v49);
    swift_willThrow();
    v14 = v111;
    v50 = 0;
    v15 = v52;
    v118 = v52;
    (*(v108 + 16))(v14, v106, v107);
    sub_1B08F5590(v106, v102);
    v51 = (*(v99 + 80) + 16) & ~*(v99 + 80);
    v58 = 7;
    v53 = swift_allocObject();
    sub_1B0901DA8(v102, v53 + v51);
    v16 = v52;
    v59 = swift_allocObject();
    *(v59 + 16) = v52;
    v70 = sub_1B0E43988();
    v71 = sub_1B0E458E8();
    v55 = 17;
    v61 = swift_allocObject();
    *(v61 + 16) = 0;
    v62 = swift_allocObject();
    v56 = 8;
    *(v62 + 16) = 8;
    v57 = 32;
    v17 = swift_allocObject();
    v18 = v53;
    v54 = v17;
    *(v17 + 16) = v87;
    *(v17 + 24) = v18;
    v19 = swift_allocObject();
    v20 = v54;
    v63 = v19;
    *(v19 + 16) = v88;
    *(v19 + 24) = v20;
    v64 = swift_allocObject();
    *(v64 + 16) = 64;
    v65 = swift_allocObject();
    *(v65 + 16) = v56;
    v21 = swift_allocObject();
    v22 = v59;
    v60 = v21;
    *(v21 + 16) = v89;
    *(v21 + 24) = v22;
    v23 = swift_allocObject();
    v24 = v60;
    v67 = v23;
    *(v23 + 16) = v90;
    *(v23 + 24) = v24;
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v66 = sub_1B0E46A48();
    v68 = v25;

    v26 = v61;
    v27 = v68;
    *v68 = v91;
    v27[1] = v26;

    v28 = v62;
    v29 = v68;
    v68[2] = v92;
    v29[3] = v28;

    v30 = v63;
    v31 = v68;
    v68[4] = v93;
    v31[5] = v30;

    v32 = v64;
    v33 = v68;
    v68[6] = v94;
    v33[7] = v32;

    v34 = v65;
    v35 = v68;
    v68[8] = v95;
    v35[9] = v34;

    v36 = v67;
    v37 = v68;
    v68[10] = v96;
    v37[11] = v36;
    sub_1B0394964();

    if (os_log_type_enabled(v70, v71))
    {
      v38 = v50;
      v41 = sub_1B0E45D78();
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v42 = sub_1B03949A8(1, v40, v40);
      v43 = sub_1B03949A8(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v45 = &v117;
      v117 = v41;
      v46 = &v125;
      v125 = v42;
      v47 = &v124;
      v124 = v43;
      v44 = 2;
      sub_1B0394A48(2, &v117);
      sub_1B0394A48(v44, v45);
      v115 = v91;
      v116 = v61;
      sub_1B03949FC(&v115, v45, v46, v47);
      v48 = v38;
      if (v38)
      {

        __break(1u);
      }

      else
      {
        v115 = v92;
        v116 = v62;
        sub_1B03949FC(&v115, &v117, &v125, &v124);
        v39[4] = 0;
        v115 = v93;
        v116 = v63;
        sub_1B03949FC(&v115, &v117, &v125, &v124);
        v39[3] = 0;
        v115 = v94;
        v116 = v64;
        sub_1B03949FC(&v115, &v117, &v125, &v124);
        v39[2] = 0;
        v115 = v95;
        v116 = v65;
        sub_1B03949FC(&v115, &v117, &v125, &v124);
        v39[1] = 0;
        v115 = v96;
        v116 = v67;
        sub_1B03949FC(&v115, &v117, &v125, &v124);
        _os_log_impl(&dword_1B0389000, v70, v71, "[%lld] Failed to encode attributed string: %@", v41, 0x16u);
        sub_1B03998A8(v42, 1, v40);
        sub_1B03998A8(v43, 0, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v70);
    (*(v108 + 8))(v111, v107);

    MEMORY[0x1E69E5920](v82);
    v76 = 0;
    v77 = 0xF000000000000000;
  }

LABEL_9:
  v72 = v77;
  return v76;
}

void *sub_1B0A7AE3C(const void *a1, uint64_t a2)
{
  v31 = 0;
  v34 = a1;
  v33 = a2;
  v32 = v2;
  v26 = *v2;
  v24 = *(v2 + 1);
  v25 = v2[2];
  v27 = *(v2 + 3);
  MEMORY[0x1E69E5928](*v2);

  v31 = sub_1B0A7B280(v26, v24, v27, v25);
  MEMORY[0x1E69E5920](v26);

  if (v31 <= 0)
  {
    return v23;
  }

  memcpy(__dst, a1, sizeof(__dst));
  v19 = sub_1B08C4EF0(__dst);
  if (!v19)
  {
    v3 = sub_1B08C4F00(__dst);
    v15 = *v3;
    v16 = v3[1];
    v17 = *(v3 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v18 = sub_1B0A6DC9C(v15, v16, v17);
    if (!v4)
    {

      return v23;
    }

    sub_1B0A7B388(v18, v4);

    if (v23)
    {
      v9 = v23;
    }

LABEL_10:

    return 0;
  }

  if (v19 != 1)
  {
    v6 = sub_1B08C4F00(__dst);
    memcpy(v39, v6, sizeof(v39));
    sub_1B08C4F88(v39, v30);
    sub_1B08C4F88(v39, v29);
    sub_1B08C4F88(v39, v28);
    v7 = sub_1B0A68600(v39);
    sub_1B0A651EC(v39, v7, a2, v35);
    memcpy(v36, v35, 0x31uLL);
    if (v36[0])
    {
      memcpy(v37, v36, sizeof(v37));
      v11 = *v22;
      MEMORY[0x1E69E5928](*v22);
      v10 = sub_1B0A63E80();
      [v11 appendAttributedString_];
      MEMORY[0x1E69E5920](v10);
      MEMORY[0x1E69E5920](v11);
      sub_1B08D9204();
    }

    sub_1B08C5168(v39);
    return v23;
  }

  v5 = sub_1B08C4F00(__dst);
  v12 = *v5;
  v13 = v5[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0A7B388(v12, v13);
  if (!v23)
  {
    goto LABEL_10;
  }
}

uint64_t sub_1B0A7B280(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  MEMORY[0x1E69E5928](a1);
  v6 = [a1 string];
  sub_1B0E44AD8();
  MEMORY[0x1E69E5920](a1);
  v8 = sub_1B0E44CF8();

  result = v8;
  if (__OFSUB__(a2, v8))
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1E69E5920](v6);
    sub_1B0E46B68();
    return v10;
  }

  return result;
}

uint64_t sub_1B0A7B388(uint64_t a1, uint64_t a2)
{
  v17 = *v2;
  v15 = *(v2 + 1);
  v16 = v2[2];
  v18 = *(v2 + 3);
  MEMORY[0x1E69E5928](*v2);

  v19 = sub_1B0A7B280(v17, v15, v18, v16);
  MEMORY[0x1E69E5920](v17);

  result = v19;
  if (v19 > 0)
  {

    v8 = *v14;
    v6 = *(v14 + 1);
    v7 = v14[2];
    v9 = *(v14 + 3);
    MEMORY[0x1E69E5928](*v14);

    v10 = sub_1B0A7B280(v8, v6, v9, v7);
    MEMORY[0x1E69E5920](v8);

    v11 = sub_1B0A7E3F0(a1, a2, v10, v14[2]);

    if (v11)
    {
      v5 = v11;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      v4 = *v14;
      MEMORY[0x1E69E5928](*v14);
      [v4 appendAttributedString_];
      MEMORY[0x1E69E5920](v4);
      return MEMORY[0x1E69E5920](v5);
    }

    else
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      sub_1B0A7B660();
      swift_allocError();
      return swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_1B0A7B5FC()
{
  v2 = qword_1EB6E3D40;
  if (!qword_1EB6E3D40)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6E3D40);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B0A7B660()
{
  v2 = qword_1EB6E3D48;
  if (!qword_1EB6E3D48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3D48);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A7B704@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v109 = a2;
  v125 = a1;
  v110 = "Fatal error";
  v111 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v112 = "Message/WatchOSRender.swift";
  v143 = 0;
  v142 = 0;
  v140 = 0;
  v141 = 0;
  v137 = 0;
  v120 = 0;
  v113 = (*(*(sub_1B0E43108() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v114 = &v28 - v113;
  v115 = sub_1B0E42E68();
  v116 = *(v115 - 8);
  v117 = v115 - 8;
  v118 = (*(v116 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v115);
  v119 = &v28 - v118;
  v121 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v120);
  v122 = &v28 - v121;
  v123 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v124 = &v28 - v123;
  v126 = type metadata accessor for WatchOSRender.Message.InfoFromLibrary(v4);
  v127 = *(v126 - 8);
  v128 = v126 - 8;
  v129 = (*(v127 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v125);
  v130 = &v28 - v129;
  v131 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v132 = &v28 - v131;
  v143 = &v28 - v131;
  v142 = v8;
  v133 = [v8 mf_externalReference];
  if (v133)
  {
    v108 = v133;
    v107 = v133;
    sub_1B0E42DE8();
    (*(v116 + 32))(v122, v119, v115);
    (*(v116 + 56))(v122, 0, 1, v115);
    MEMORY[0x1E69E5920](v107);
  }

  else
  {
    (*(v116 + 56))(v122, 1, 1, v115);
  }

  sub_1B07C8260(v122, v124);
  if ((*(v116 + 48))(v124, 1, v115) == 1)
  {
    sub_1B06E3800(v124);
    v105 = 0;
    v106 = 0;
  }

  else
  {
    v103 = sub_1B0E42D18();
    v104 = v9;
    (*(v116 + 8))(v124, v115);
    v105 = v103;
    v106 = v104;
  }

  v101 = v106;
  v102 = v105;
  if (!v106)
  {
    goto LABEL_43;
  }

  v99 = v102;
  v100 = v101;
  v96 = v101;
  v97 = v102;
  v140 = v102;
  v141 = v101;
  v10 = [v125 mailbox];
  v98 = v10;
  if (v10)
  {
    v95 = v98;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v93 = v95;
  v94 = [v95 store];
  MEMORY[0x1E69E5920](v93);
  if (v94)
  {
    v92 = v94;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v90 = v92;
  v91 = [v92 account];
  MEMORY[0x1E69E5920](v90);
  v138 = v91;
  MEMORY[0x1E69E5928](v125);
  if (v138)
  {
    v139 = v138;
  }

  else
  {
    v139 = [v125 account];
    if (v138)
    {
      sub_1B06D4E94(&v138);
    }
  }

  MEMORY[0x1E69E5920](v125);
  v89 = v139;
  if (!v139)
  {

LABEL_43:
    MEMORY[0x1E69E5920](v125);
    return (*(v127 + 56))(v109, 1, 1, v126);
  }

  v88 = v89;
  v82 = v89;
  v137 = v89;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v83 = [v125 notificationID];
  v84 = sub_1B0E44AD8();
  v85 = v11;
  v86 = objc_opt_self();
  v12 = [v125 mailbox];
  v87 = v12;
  if (v12)
  {
    v81 = v87;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v79 = v81;
  v80 = [v81 name];
  if (v80)
  {
    v78 = v80;
    v73 = v80;
    v74 = sub_1B0E44AD8();
    v75 = v13;
    MEMORY[0x1E69E5920](v73);
    v76 = v74;
    v77 = v75;
  }

  else
  {
    v76 = 0;
    v77 = 0;
  }

  v71 = v77;
  v72 = v76;
  if (v77)
  {
    v69 = v72;
    v70 = v71;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v67 = v70;
  v66 = sub_1B0E44AC8();
  MEMORY[0x1E69E5920](v79);

  v68 = [v125 remoteID];
  if (v68)
  {
    v65 = v68;
    v60 = v68;
    v61 = sub_1B0E44AD8();
    v62 = v14;
    MEMORY[0x1E69E5920](v60);
    v63 = v61;
    v64 = v62;
  }

  else
  {
    v63 = 0;
    v64 = 0;
  }

  v58 = v64;
  v59 = v63;
  if (v64)
  {
    v56 = v59;
    v57 = v58;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v35 = v57;
  v36 = sub_1B0E44AC8();

  v37 = [v86 generateNotificationIdWithFolderId:v66 remoteId:v36];
  MEMORY[0x1E69E5920](v36);
  MEMORY[0x1E69E5920](v66);
  v38 = sub_1B0E44AD8();
  v39 = v15;
  v51 = 0x1E7A9F000uLL;
  v40 = [objc_opt_self() accountIDForAccount_];
  v41 = sub_1B0E44AD8();
  v42 = v16;
  v45 = 0;
  v17 = sub_1B0E46A28();
  v48 = &v135;
  v135 = v17;
  v136 = v18;
  v44 = "";
  v46 = 1;
  v19 = sub_1B0E44838();
  v43 = v20;
  MEMORY[0x1B2728B30](v19);

  v134 = [v125 conversationID];
  sub_1B0E469F8();
  v21 = sub_1B0E44838();
  v47 = v22;
  MEMORY[0x1B2728B30](v21);

  v50 = v135;
  v49 = v136;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v48);
  v52 = sub_1B0E44C88();
  v53 = v23;
  v54 = objc_opt_self();
  v55 = [v125 mailbox];
  if (v55)
  {
    v34 = v55;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v24 = v125;
  v33 = [v54 nanoMailboxIDForMFMailboxUID_];
  MEMORY[0x1E69E5920](v28);
  v29 = sub_1B0E44AD8();
  v30 = v25;
  MEMORY[0x1E69E5928](v24);
  v32 = [v24 dateReceived];
  sub_1B0E430D8();
  MEMORY[0x1E69E5920](v24);
  MEMORY[0x1E69E5928](v24);
  v31 = [v24 messageSize];
  MEMORY[0x1E69E5920](v24);
  v26 = sub_1B0A80C0C();
  sub_1B0A80AF4(v97, v96, v84, v85, v38, v39, v41, v42, v130, v52, v53, v29, v30, v114, v31, v26);
  MEMORY[0x1E69E5920](v32);
  MEMORY[0x1E69E5920](v33);
  MEMORY[0x1E69E5920](v40);
  MEMORY[0x1E69E5920](v37);
  MEMORY[0x1E69E5920](v83);
  sub_1B08F524C(v130, v132);
  MEMORY[0x1E69E5920](v82);

  sub_1B08F53FC(v132, v109);
  (*(v127 + 56))(v109, 0, 1, v126);
  MEMORY[0x1E69E5920](v125);
  return sub_1B08F533C(v132);
}

uint64_t type metadata accessor for WatchOSRender.Message.InfoFromLibrary(uint64_t a1)
{
  v2 = qword_1EB6E3D78;
  if (!qword_1EB6E3D78)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1B0A7C898@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v125 = a7;
  v157 = a1;
  v152 = a2;
  v160 = a3;
  v153 = a4;
  v165 = a5;
  v154 = a6;
  v126 = sub_1B0901E30;
  v127 = sub_1B06BCD8C;
  v128 = sub_1B0398F5C;
  v129 = sub_1B0398F5C;
  v130 = sub_1B03992D4;
  v182 = 0;
  v181 = 0;
  v180 = 0;
  v179 = 0;
  v177 = 0;
  v178 = 0;
  v176 = 0;
  v175 = 0;
  v131 = 0;
  v149 = 0;
  v132 = sub_1B0E43108();
  v133 = *(v132 - 8);
  v134 = v132 - 8;
  v135 = (*(v133 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v136 = v75 - v135;
  v137 = *(_s6LoggerVMa_2(v7) - 8);
  v138 = v137;
  v139 = *(v137 + 64);
  v140 = (v139 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v149);
  v141 = v75 - v140;
  v142 = sub_1B0E439A8();
  v143 = *(v142 - 8);
  v144 = v142 - 8;
  v145 = (*(v143 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v149);
  v146 = v75 - v145;
  v156 = type metadata accessor for Message(v8);
  v162 = *(v156 - 8);
  v155 = v156 - 8;
  v147 = (*(v162 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v156);
  v164 = v75 - v147;
  v148 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3D50, &qword_1B0EA4408) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v149);
  v168 = v75 - v148;
  v169 = type metadata accessor for WatchOSRender.Message.InfoFromHeader(v9);
  v166 = *(v169 - 8);
  v167 = v169 - 8;
  v150 = (*(v166 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v149);
  v151 = (v75 - v150);
  v182 = v75 - v150;
  v161 = type metadata accessor for WatchOSRender.Message(v10);
  v158 = *(v161 - 1);
  v159 = v161 - 2;
  v11 = MEMORY[0x1EEE9AC00](v164);
  v12 = v162;
  v163 = v75 - v13;
  v181 = v75 - v13;
  v180 = v14;
  v179 = v15;
  v177 = v160;
  v178 = v16;
  v176 = v17;
  v175 = v18;
  v19 = (v75 + v161[12] - v13);
  *v19 = 0;
  v19[1] = 0;
  (*(v12 + 16))(v11);

  sub_1B0A7FD1C(v164, v165, v168);
  if ((*(v166 + 48))(v168, 1, v169) == 1)
  {
    v20 = v146;
    sub_1B0A80D90(v168);
    (*(v143 + 16))(v20, v154, v142);
    sub_1B08F5590(v154, v141);
    v111 = (*(v138 + 80) + 16) & ~*(v138 + 80);
    v114 = 7;
    v115 = swift_allocObject();
    sub_1B0901DA8(v141, v115 + v111);
    v123 = sub_1B0E43988();
    v124 = sub_1B0E458E8();
    v112 = 17;
    v117 = swift_allocObject();
    *(v117 + 16) = 0;
    v118 = swift_allocObject();
    *(v118 + 16) = 8;
    v113 = 32;
    v21 = swift_allocObject();
    v22 = v115;
    v116 = v21;
    *(v21 + 16) = v126;
    *(v21 + 24) = v22;
    v23 = swift_allocObject();
    v24 = v116;
    v120 = v23;
    *(v23 + 16) = v127;
    *(v23 + 24) = v24;
    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v119 = sub_1B0E46A48();
    v121 = v25;

    v26 = v117;
    v27 = v121;
    *v121 = v128;
    v27[1] = v26;

    v28 = v118;
    v29 = v121;
    v121[2] = v129;
    v29[3] = v28;

    v30 = v120;
    v31 = v121;
    v121[4] = v130;
    v31[5] = v30;
    sub_1B0394964();

    if (os_log_type_enabled(v123, v124))
    {
      v74 = v131;
      v78 = sub_1B0E45D78();
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v77 = 0;
      v79 = sub_1B03949A8(0, v76, v76);
      v80 = sub_1B03949A8(v77, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v81 = &v174;
      v174 = v78;
      v82 = &v173;
      v173 = v79;
      v83 = &v172;
      v172 = v80;
      sub_1B0394A48(0, &v174);
      sub_1B0394A48(1, v81);
      v170 = v128;
      v171 = v117;
      sub_1B03949FC(&v170, v81, v82, v83);
      v84 = v74;
      if (v74)
      {

        __break(1u);
      }

      else
      {
        v170 = v129;
        v171 = v118;
        sub_1B03949FC(&v170, &v174, &v173, &v172);
        v75[1] = 0;
        v170 = v130;
        v171 = v120;
        sub_1B03949FC(&v170, &v174, &v173, &v172);
        _os_log_impl(&dword_1B0389000, v123, v124, "[%lld] Unable to create header info for message.", v78, 0xCu);
        v75[0] = 0;
        sub_1B03998A8(v79, 0, v76);
        sub_1B03998A8(v80, v75[0], MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v123);
    (*(v143 + 8))(v146, v142);
    sub_1B039480C(v154);

    sub_1B08F533C(v152);
    (*(v162 + 8))(v157, v156);
    sub_1B03B1198(&v163[v161[12]]);
    return (*(v158 + 56))(v125, 1, 1, v161);
  }

  else
  {
    sub_1B0A81958(v168, v151);
    v85 = *v152;
    v86 = v152[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v32 = v86;
    v33 = v152;
    v34 = v163;
    *v163 = v85;
    *(v34 + 1) = v32;
    v87 = v33[2];
    v88 = v33[3];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v35 = v88;
    v36 = v152;
    v37 = v163;
    *(v163 + 2) = v87;
    *(v37 + 3) = v35;
    v89 = v36[4];
    v90 = v36[5];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v38 = v90;
    v39 = v152;
    v40 = v163;
    *(v163 + 4) = v89;
    *(v40 + 5) = v38;
    v91 = v39[6];
    v92 = v39[7];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v41 = v92;
    v42 = v152;
    v43 = v163;
    *(v163 + 6) = v91;
    *(v43 + 7) = v41;
    v93 = v42[8];
    v94 = v42[9];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v44 = v94;
    v45 = v152;
    v46 = v163;
    *(v163 + 8) = v93;
    *(v46 + 9) = v44;
    v95 = v45[10];
    v96 = v45[11];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v47 = v136;
    v48 = v96;
    v49 = v169;
    v50 = v133;
    v51 = v132;
    v52 = v151;
    v53 = v163;
    *(v163 + 10) = v95;
    *(v53 + 11) = v48;
    v54 = v52 + *(v49 + 40);
    v98 = *(v50 + 16);
    v97 = v50 + 16;
    v98(v47, v54, v51);
    v55 = &v163[v161[10]];
    v100 = *(v133 + 32);
    v99 = v133 + 32;
    v100(v55, v136, v132);
    v110 = type metadata accessor for WatchOSRender.Message.InfoFromLibrary(0);
    v98(v136, v152 + *(v110 + 40), v132);
    v100(&v163[v161[11]], v136, v132);
    v101 = *v151;
    v102 = v151[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v56 = v102;
    v57 = &v163[v161[12]];
    *v57 = v101;
    *(v57 + 1) = v56;

    v103 = v151[2];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v58 = v151;
    *&v163[v161[13]] = v103;
    v104 = v58[3];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v59 = v151;
    *&v163[v161[14]] = v104;
    v105 = v59[4];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v60 = v151;
    *&v163[v161[15]] = v105;
    v106 = v60[5];
    v107 = v60[6];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v61 = v107;
    v62 = v151;
    v63 = &v163[v161[16]];
    *v63 = v106;
    *(v63 + 1) = v61;
    v108 = v62[7];
    v109 = v62[8];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v64 = v109;
    v65 = &v163[v161[17]];
    *v65 = v108;
    *(v65 + 1) = v64;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v66 = v151;
    v67 = v110;
    v68 = v161;
    v69 = v153;
    v70 = v152;
    v71 = v163;
    v72 = &v163[v161[18]];
    *v72 = v160;
    *(v72 + 1) = v69;
    *&v71[v68[19]] = *(v70 + *(v67 + 48));
    sub_1B0A81A1C(v66);
    sub_1B0902624(v163, v125);
    (*(v158 + 56))(v125, 0, 1, v161);
    sub_1B039480C(v154);

    sub_1B08F533C(v152);
    (*(v162 + 8))(v157, v156);
    return sub_1B08F597C(v163);
  }
}

id sub_1B0A7D9FC()
{
  v71 = 0;
  v70 = 0;
  v54 = 0;
  v61 = sub_1B0E43108();
  v55 = *(v61 - 8);
  v56 = v61 - 8;
  v35 = (v55[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v61);
  v0 = &v12 - v35;
  v64 = &v12 - v35;
  v71 = v1;
  v66 = [objc_opt_self() createMessage];
  v70 = v66;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v36 = *v60;
  v37 = *(v60 + 1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v38 = sub_1B0E44AC8();

  [v66 setMessageId_];
  MEMORY[0x1E69E5920](v38);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v39 = *(v60 + 2);
  v40 = *(v60 + 3);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v41 = sub_1B0E44AC8();

  [v66 setPublisherBulletinId_];
  MEMORY[0x1E69E5920](v41);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v42 = *(v60 + 4);
  v43 = *(v60 + 5);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v44 = sub_1B0E44AC8();

  [v66 setNotificationMessageId_];
  MEMORY[0x1E69E5920](v44);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v45 = *(v60 + 6);
  v46 = *(v60 + 7);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v47 = sub_1B0E44AC8();

  [v66 setAccountId_];
  MEMORY[0x1E69E5920](v47);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v48 = *(v60 + 8);
  v49 = *(v60 + 9);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v50 = sub_1B0E44AC8();

  [v66 setConversationId_];
  MEMORY[0x1E69E5920](v50);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v51 = *(v60 + 10);
  v52 = *(v60 + 11);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v53 = sub_1B0E44AC8();

  [v66 setMailboxId_];
  MEMORY[0x1E69E5920](v53);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v67 = type metadata accessor for WatchOSRender.Message(v54);
  v2 = v67[10];
  v59 = v55[2];
  v58 = v55 + 2;
  v59(v0, &v60[v2], v61);
  v3 = sub_1B0E43068();
  v4 = v64;
  v57 = v3;
  v63 = v55[1];
  v62 = v55 + 1;
  v63(v64, v61);
  [v66 setDateSent_];
  MEMORY[0x1E69E5920](v57);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v59(v4, &v60[v67[11]], v61);
  v5 = sub_1B0E43068();
  v6 = v60;
  v65 = v5;
  v63(v64, v61);
  [v66 setDateReceived_];
  MEMORY[0x1E69E5920](v65);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v7 = (v6 + v67[12]);
  v68 = *v7;
  v69 = v7[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v69)
  {
    v33 = v68;
    v34 = v69;
    v30 = v69;
    v31 = sub_1B0E44AC8();

    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  v13 = v32;
  [v66 setFrom_];
  MEMORY[0x1E69E5920](v13);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = *&v60[v67[13]];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v18 = MEMORY[0x1E69E6158];
  v15 = sub_1B0E451A8();

  [v66 setTo_];
  MEMORY[0x1E69E5920](v15);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = *&v60[v67[14]];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17 = sub_1B0E451A8();

  [v66 setCc_];
  MEMORY[0x1E69E5920](v17);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v19 = *&v60[v67[15]];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20 = sub_1B0E451A8();

  [v66 setBcc_];
  MEMORY[0x1E69E5920](v20);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v8 = &v60[v67[16]];
  v21 = *v8;
  v22 = v8[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v23 = sub_1B0E44AC8();

  [v66 setSubject_];
  MEMORY[0x1E69E5920](v23);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v9 = &v60[v67[17]];
  v24 = *v9;
  v25 = v9[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v26 = sub_1B0E44AC8();

  [v66 setMessageIdHeader_];
  MEMORY[0x1E69E5920](v26);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v10 = &v60[v67[18]];
  v27 = *v10;
  v28 = v10[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v29 = sub_1B0E44AC8();

  [v66 setPreview_];
  MEMORY[0x1E69E5920](v29);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  [v66 setStatus_];
  swift_unknownObjectRelease();
  return v66;
}

uint64_t sub_1B0A7E3F0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v20 = a4;
  v21 = a3;
  v25 = a2;
  v24 = a1;
  v41[1] = *MEMORY[0x1E69E9840];
  v27 = 0;
  v32 = 0;
  v29 = 0;
  v28 = 0;
  v35 = a1;
  v36 = a2;
  v34 = a3;
  v33 = a4;
  v41[0] = 0;
  v31 = 0;
  v23 = *(v4 + 16);
  v22 = v23;
  swift_unknownObjectRetain();
  swift_getObjectType();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v26 = sub_1B0E44AC8();

  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v19 = 0;
  v17 = 0;
  v30 = 0;
  v18 = [v23 parseHTMLBody:v26 encoding:4 maxLength:v21 maxImageWidth:&v31 partiallyParsed:v20 imageAttachmentsLoaded:? urlsFound:?];
  v15 = v18;
  v16 = v30;
  v5 = v30;
  v6 = v41[0];
  v41[0] = v16;

  swift_unknownObjectRelease();
  if (v18)
  {
    v14 = v15;
    v13 = v15;
    v29 = v15;
    swift_unknownObjectRelease();
    v12 = v31 != 1;
    v28 = v31 != 1;
    v8 = v13;
    v9 = v12;
    sub_1B06D4E94(v41);
    v10 = v8;
    v11 = v9;
  }

  else
  {
    swift_unknownObjectRelease();
    sub_1B06D4E94(v41);
    v10 = 0;
    v11 = 0;
  }

  return v10;
}

uint64_t sub_1B0A7E7B8()
{
  v2 = *(v0 + 64);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B0A7E7F0(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t sub_1B0A7E83C@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for WatchOSRender.Message(0) + 40);
  v2 = sub_1B0E43108();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}