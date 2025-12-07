void sub_10003A000(uint64_t *a1, id *a2, int a3, uint64_t a4, void *a5)
{
  switch(a3)
  {
    case 0:
      *a2 = sub_100038DF8(a1 + 1);
      return;
    case 1:
    case 2:
      v8 = sub_100038D74(a1 + 1);
      goto LABEL_15;
    case 3:
      *a2 = sub_100038C58(a1 + 1);
      return;
    case 4:
    case 5:
      v7 = sub_100038D38(a1 + 1);
      goto LABEL_13;
    case 6:
      *a2 = sub_100038C1C(a1 + 1);
      return;
    case 7:
    case 11:
    case 17:
      v8 = sub_100038D20(a1 + 1);
      goto LABEL_15;
    case 8:
    case 12:
      v7 = sub_100038C94((a1 + 1));
      goto LABEL_13;
    case 9:
      v8 = sub_100038DB0(a1 + 1);
LABEL_15:
      *a2 = v8;
      return;
    case 10:
      v7 = sub_100038DD4(a1 + 1);
      goto LABEL_13;
    case 13:

      v7 = sub_1000390CC(a1 + 1);
      goto LABEL_13;
    case 14:

      v7 = sub_100038FC8(a1 + 1);
LABEL_13:
      *a2 = v7;
      break;
    case 15:
      v10 = objc_alloc_init([a5 msgClass]);
      [a1 readMessage:v10 extensionRegistry:a4];

      *a2 = v10;
      break;
    default:
      return;
  }
}

uint64_t sub_10003A6C4(unsigned int a1, uint64_t a2, int a3)
{
  if (a3 == 1)
  {
    return sub_10001B0CC(a2);
  }

  if (a3 == 11)
  {
    return sub_10001B4C4(a2, a1);
  }

  return 0;
}

uint64_t sub_10003A944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%u", a2];
  v6 = [NSString stringWithFormat:@"%u", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_10003AFBC(unsigned int a1, uint64_t a2, int a3)
{
  switch(a3)
  {
    case 2:
      return sub_10001B0CC(a2);
    case 9:
      return sub_10001B558(a2, a1);
    case 7:
      return sub_10001B184(a2, a1);
  }

  return 0;
}

id sub_10003B15C(id result, uint64_t a2, uint64_t a3, int a4)
{
  switch(a4)
  {
    case 2:
      return [result writeSFixed32:a3 value:a2];
    case 9:
      return [result writeSInt32:a3 value:a2];
    case 7:
      return [result writeInt32:a3 value:a2];
  }

  return result;
}

uint64_t sub_10003B264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%u", a2];
  v6 = [NSString stringWithFormat:@"%d", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_10003B8D4(unint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 4)
  {
    return sub_10001B02C(a2);
  }

  if (a3 == 12)
  {
    return sub_10001B11C(a2, a1);
  }

  return 0;
}

uint64_t sub_10003BB54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%u", a2];
  v6 = [NSString stringWithFormat:@"%llu", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_10003C1C4(unint64_t a1, uint64_t a2, int a3)
{
  switch(a3)
  {
    case 5:
      return sub_10001B02C(a2);
    case 10:
      return sub_10001B5F4(a2, a1);
    case 8:
      return sub_10001B11C(a2, a1);
  }

  return 0;
}

id sub_10003C364(id result, uint64_t a2, uint64_t a3, int a4)
{
  switch(a4)
  {
    case 5:
      return [result writeSFixed64:a3 value:a2];
    case 10:
      return [result writeSInt64:a3 value:a2];
    case 8:
      return [result writeInt64:a3 value:a2];
  }

  return result;
}

uint64_t sub_10003C46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%u", a2];
  v6 = [NSString stringWithFormat:@"%lld", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_10003CCD8(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%u", a2];
  if (a3)
  {
    v6 = @"true";
  }

  else
  {
    v6 = @"false";
  }

  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_10003D538(uint64_t a1, uint64_t a2, float a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%u", a2];
  v6 = [NSString stringWithFormat:@"%.*g", 6, a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_10003DDB8(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%u", a2];
  v6 = [NSString stringWithFormat:@"%.*lg", 15, *&a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_10003E758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%u", a2];
  v6 = [NSNumber numberWithInt:a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_10003F39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%u", a2];
  v6 = *(v4 + 16);

  return v6(v4, v5, a3);
}

uint64_t sub_10003FC0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%d", a2];
  v6 = [NSString stringWithFormat:@"%u", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100040488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%d", a2];
  v6 = [NSString stringWithFormat:@"%d", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100040D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%d", a2];
  v6 = [NSString stringWithFormat:@"%llu", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_1000415A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%d", a2];
  v6 = [NSString stringWithFormat:@"%lld", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100041DF4(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%d", a2];
  if (a3)
  {
    v6 = @"true";
  }

  else
  {
    v6 = @"false";
  }

  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100042634(uint64_t a1, uint64_t a2, float a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%d", a2];
  v6 = [NSString stringWithFormat:@"%.*g", 6, a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100042E94(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%d", a2];
  v6 = [NSString stringWithFormat:@"%.*lg", 15, *&a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_1000437E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%d", a2];
  v6 = [NSNumber numberWithInt:a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100044404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%d", a2];
  v6 = *(v4 + 16);

  return v6(v4, v5, a3);
}

uint64_t sub_100044C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%llu", a2];
  v6 = [NSString stringWithFormat:@"%u", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100045530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%llu", a2];
  v6 = [NSString stringWithFormat:@"%d", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100045DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%llu", a2];
  v6 = [NSString stringWithFormat:@"%llu", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100046690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%llu", a2];
  v6 = [NSString stringWithFormat:@"%lld", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100046EFC(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%llu", a2];
  if (a3)
  {
    v6 = @"true";
  }

  else
  {
    v6 = @"false";
  }

  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_10004775C(uint64_t a1, uint64_t a2, float a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%llu", a2];
  v6 = [NSString stringWithFormat:@"%.*g", 6, a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100047FDC(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%llu", a2];
  v6 = [NSString stringWithFormat:@"%.*lg", 15, *&a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_100048968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%llu", a2];
  v6 = [NSNumber numberWithInt:a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_1000495AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%llu", a2];
  v6 = *(v4 + 16);

  return v6(v4, v5, a3);
}

uint64_t sub_100049E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%lld", a2];
  v6 = [NSString stringWithFormat:@"%u", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_10004A698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%lld", a2];
  v6 = [NSString stringWithFormat:@"%d", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_10004AF34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%lld", a2];
  v6 = [NSString stringWithFormat:@"%llu", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_10004B7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%lld", a2];
  v6 = [NSString stringWithFormat:@"%lld", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_10004C004(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%lld", a2];
  if (a3)
  {
    v6 = @"true";
  }

  else
  {
    v6 = @"false";
  }

  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_10004C844(uint64_t a1, uint64_t a2, float a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%lld", a2];
  v6 = [NSString stringWithFormat:@"%.*g", 6, a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_10004D0A4(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%lld", a2];
  v6 = [NSString stringWithFormat:@"%.*lg", 15, *&a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_10004D9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%lld", a2];
  v6 = [NSNumber numberWithInt:a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_10004E614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%lld", a2];
  v6 = *(v4 + 16);

  return v6(v4, v5, a3);
}

uint64_t sub_10004EE54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%u", a3];
  v6 = *(v4 + 16);

  return v6(v4, a2, v5);
}

uint64_t sub_10004F640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%d", a3];
  v6 = *(v4 + 16);

  return v6(v4, a2, v5);
}

uint64_t sub_10004FE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%llu", a3];
  v6 = *(v4 + 16);

  return v6(v4, a2, v5);
}

uint64_t sub_100050638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%lld", a3];
  v6 = *(v4 + 16);

  return v6(v4, a2, v5);
}

uint64_t sub_100050DFC(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = @"true";
  }

  else
  {
    v4 = @"false";
  }

  return (*(v3 + 16))(v3, a2, v4);
}

uint64_t sub_100051578(uint64_t a1, uint64_t a2, float a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%.*g", 6, a3];
  v6 = *(v4 + 16);

  return v6(v4, a2, v5);
}

uint64_t sub_100051D4C(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%.*lg", 15, *&a3];
  v6 = *(v4 + 16);

  return v6(v4, a2, v5);
}

uint64_t sub_100052600(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [NSNumber numberWithInt:?];
  v5 = *(v3 + 16);

  return v5(v3, a2, v4);
}

void sub_100056F3C(uint64_t a1@<X8>)
{
  sub_10005F0E4();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_100056F88(uint64_t a2@<X8>)
{
  sub_10005F0E4();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
}

uint64_t sub_100056FCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100062564();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_100057054(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_100057088@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result == 0;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1000570A0()
{
  if (v0[8])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_1000570C8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result == 0;
  *a2 = *result;
  v3 = v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_1000570E4(void *a1@<X8>)
{
  if (*(v1 + 8))
  {
    *a1 = 0;
  }

  else
  {
    *a1 = *v1;
  }
}

Swift::Int sub_100057104(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100057170(uint64_t a1, uint64_t a2)
{
  v4 = sub_100060090();

  return Enum.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1000571C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

BOOL sub_100057228(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = 0;
  }

  else
  {
    v3 = *a1;
  }

  if (*(a2 + 8))
  {
    v2 = 0;
  }

  return v3 == v2;
}

unint64_t sub_100057260(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_100057270(unint64_t result)
{
  if (result >= 2)
  {
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  return result;
}

BOOL sub_1000572C8(uint64_t *a1, void *a2, uint64_t a3)
{
  sub_100060520();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  return v5 == v4;
}

Swift::Int sub_100057340(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000573A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005F46C();

  return Enum.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1000573F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

unint64_t *sub_100057450@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_10005746C@<X0>(uint64_t *a2@<X8>)
{
  if (*v2 >= 2)
  {
    v3 = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    *a2 = *v2;
  }

  return v3;
}

unint64_t sub_1000574BC@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result <= 1)
  {
    v2 = result;
  }

  else
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = result > 1;
  return result;
}

uint64_t sub_1000574D4(uint64_t a1)
{
  if (*v1 < 2uLL)
  {
    return *v1;
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t sub_100057540(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_100057598()
{
  v1 = *(v0 + 8);
  sub_10005F0F8(v1, *(v0 + 16));
  return v1;
}

void sub_1000575CC(uint64_t a1, uint64_t a2)
{
  sub_10005F14C(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t sub_1000576BC@<X0>(uint64_t a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  *(a1 + 8) = xmmword_10008C190;
  *(a1 + 24) = xmmword_10008C190;
  type metadata accessor for SASAnnounce(0);
  return UnknownStorage.init()();
}

uint64_t sub_10005770C()
{
  v1 = *(v0 + 16);
  sub_10005F0F8(v1, *(v0 + 24));
  return v1;
}

void sub_100057740(uint64_t a1, uint64_t a2)
{
  sub_10005F14C(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_100057798()
{
  v1 = *(v0 + 32);
  sub_10005F0F8(v1, *(v0 + 40));
  return v1;
}

void sub_1000577CC(uint64_t a1, uint64_t a2)
{
  sub_10005F14C(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_10005783C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000578D8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_100057A30@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_10008C190;
  type metadata accessor for SASSelected(0);
  return UnknownStorage.init()();
}

uint64_t sub_100057A7C(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t sub_100057A8C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SASTeardown(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100057B08(uint64_t a1)
{
  v3 = *(type metadata accessor for SASTeardown(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_100057BCC@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_10008C190;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  type metadata accessor for SASTeardown(0);
  return UnknownStorage.init()();
}

uint64_t sub_100057C18()
{
  v1 = *(v0 + 48);
  sub_10005F0F8(v1, *(v0 + 56));
  return v1;
}

void sub_100057C4C(uint64_t a1, uint64_t a2)
{
  sub_10005F14C(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_100057CA4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SASSetupB(0) + 32);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100057D20(uint64_t a1)
{
  v3 = *(type metadata accessor for SASSetupB(0) + 32);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_100057DE4@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_10008C190;
  a1[1] = xmmword_10008C190;
  a1[2] = xmmword_10008C190;
  a1[3] = xmmword_10008C190;
  type metadata accessor for SASSetupB(0);
  return UnknownStorage.init()();
}

uint64_t sub_100057EB8@<X0>(void (*a1)(void)@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_10008C190;
  a2[1] = xmmword_10008C190;
  a2[2] = xmmword_10008C190;
  a1(0);
  return UnknownStorage.init()();
}

uint64_t sub_100057F04()
{
  v1 = *v0;
  sub_10005F0F8(*v0, *(v0 + 8));
  return v1;
}

void sub_100057F38(uint64_t a1, uint64_t a2)
{
  sub_10005F14C(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
}

uint64_t sub_100057F80()
{
  v1 = *(v0 + 24);
  sub_10005F0F8(v1, *(v0 + 32));
  return v1;
}

void sub_100057FB4(uint64_t a1, uint64_t a2)
{
  sub_10005F14C(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_100058068@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_10008C190;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xC000000000000000;
  type metadata accessor for SASConfirm(0);
  return UnknownStorage.init()();
}

uint64_t sub_1000580C0()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1000580F0(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_100058130(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_1000581D4@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = &_swiftEmptyArrayStorage;
  type metadata accessor for ErrorDomainCode(0);
  return UnknownStorage.init()();
}

uint64_t sub_10005821C@<X0>(void *a1@<X8>)
{
  v3 = sub_10005F2A0(&qword_1000AE2A0, &qword_10008C2A8);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for IDSFailingDevice(0);
  sub_10005F308(v1 + *(v6 + 24), v5);
  v7 = type metadata accessor for ErrorDomainCode(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_10005F378(v5, a1);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = &_swiftEmptyArrayStorage;
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_100062680(v5, &qword_1000AE2A0, &qword_10008C2A8);
  }

  return result;
}

uint64_t sub_100058364(uint64_t a1)
{
  v3 = *(type metadata accessor for IDSFailingDevice(0) + 24);
  sub_100062680(v1 + v3, &qword_1000AE2A0, &qword_10008C2A8);
  sub_10005F378(a1, v1 + v3);
  v4 = type metadata accessor for ErrorDomainCode(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_100058408(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10005F2A0(&qword_1000AE2A0, &qword_10008C2A8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for ErrorDomainCode(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for IDSFailingDevice(0) + 24);
  *(v4 + 12) = v14;
  sub_10005F308(v1 + v14, v7);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = 0;
    v13[3] = &_swiftEmptyArrayStorage;
    UnknownStorage.init()();
    if (v15(v7, 1, v8) != 1)
    {
      sub_100062680(v7, &qword_1000AE2A0, &qword_10008C2A8);
    }
  }

  else
  {
    sub_10005F378(v7, v13);
  }

  return sub_100058608;
}

void sub_100058608(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1000625B8((*a1)[5], v4, type metadata accessor for ErrorDomainCode);
    sub_100062680(v9 + v3, &qword_1000AE2A0, &qword_10008C2A8);
    sub_10005F378(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_100062620(v5, type metadata accessor for ErrorDomainCode);
  }

  else
  {
    sub_100062680(v9 + v3, &qword_1000AE2A0, &qword_10008C2A8);
    sub_10005F378(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL sub_100058744()
{
  v1 = sub_10005F2A0(&qword_1000AE2A0, &qword_10008C2A8);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for IDSFailingDevice(0);
  sub_10005F308(v0 + *(v4 + 24), v3);
  v5 = type metadata accessor for ErrorDomainCode(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_100062680(v3, &qword_1000AE2A0, &qword_10008C2A8);
  return v6;
}

uint64_t sub_100058830()
{
  v1 = *(type metadata accessor for IDSFailingDevice(0) + 24);
  sub_100062680(v0 + v1, &qword_1000AE2A0, &qword_10008C2A8);
  v2 = type metadata accessor for ErrorDomainCode(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1000588D4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100058970(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_100058A38@<X0>(char *a1@<X8>)
{
  *a1 = xmmword_10008C190;
  v2 = type metadata accessor for IDSFailingDevice(0);
  UnknownStorage.init()();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for ErrorDomainCode(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t sub_100058ACC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ErrorDomainCode(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_100058B38()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_100058B68(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_100058BA0()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_100058BD0(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_100058C50(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t sub_100058C9C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SASTTR(0) + 40);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100058D18(uint64_t a1)
{
  v3 = *(type metadata accessor for SASTTR(0) + 40);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_100058DDC@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = &_swiftEmptyArrayStorage;
  type metadata accessor for SASTTR(0);
  return UnknownStorage.init()();
}

uint64_t sub_100058E30()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000626E0(v0, qword_1000B1990);
  sub_10005F434(v0, qword_1000B1990);
  sub_10005F2A0(&qword_1000AEA58, "8#");
  v1 = (sub_10005F2A0(&qword_1000AEA60, qword_10008D588) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10008C1A0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 0;
  *v5 = "announce";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "commit";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "selected";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "teardown";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "setupB";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "revealA";
  *(v17 + 1) = 7;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "confirm";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "tapToRadar";
  *(v21 + 1) = 10;
  v21[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100059260()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000626E0(v0, qword_1000B19C0);
  sub_10005F434(v0, qword_1000B19C0);
  sub_10005F2A0(&qword_1000AEA58, "8#");
  v1 = (sub_10005F2A0(&qword_1000AEA60, qword_10008D588) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10008C1B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "HMAC_SHA256_VERSION_1";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "HMAC_SHA256_VERSION_2";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000594C0()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000626E0(v0, qword_1000B19D8);
  sub_10005F434(v0, qword_1000B19D8);
  sub_10005F2A0(&qword_1000AEA58, "8#");
  v1 = (sub_10005F2A0(&qword_1000AEA60, qword_10008D588) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10008C1C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "aProtocolVersion";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sessionID";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 6;
  *v11 = "peerSessionID";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10005971C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 6 || result == 2)
      {
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
      }

      else if (result == 1)
      {
        sub_10005F46C();
        dispatch thunk of Decoder.decodeRepeatedEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_1000597E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (sub_10005F46C(), result = dispatch thunk of Visitor.visitPackedEnumField<A>(value:fieldNumber:)(), !v4))
  {
    v6 = v3[1];
    v7 = v3[2];
    v8 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v8 != 2)
      {
        goto LABEL_12;
      }

      v9 = *(v6 + 16);
      v10 = *(v6 + 24);
    }

    else
    {
      if (!v8)
      {
        if ((v7 & 0xFF000000000000) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      v9 = v6;
      v10 = v6 >> 32;
    }

    if (v9 == v10)
    {
      goto LABEL_12;
    }

LABEL_11:
    result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

LABEL_12:
    v11 = v3[3];
    v12 = v3[4];
    v13 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v13 != 2)
      {
        goto LABEL_21;
      }

      v14 = *(v11 + 16);
      v15 = *(v11 + 24);
    }

    else
    {
      if (!v13)
      {
        if ((v12 & 0xFF000000000000) == 0)
        {
          goto LABEL_21;
        }

LABEL_20:
        result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
        if (v4)
        {
          return result;
        }

        goto LABEL_21;
      }

      v14 = v11;
      v15 = v11 >> 32;
    }

    if (v14 != v15)
    {
      goto LABEL_20;
    }

LABEL_21:
    type metadata accessor for SASAnnounce(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100059988@<X0>(uint64_t a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  *(a1 + 8) = xmmword_10008C190;
  *(a1 + 24) = xmmword_10008C190;
  return UnknownStorage.init()();
}

uint64_t sub_100059A18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100060048(&qword_1000AEA40, type metadata accessor for SASAnnounce, &unk_10008C718);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100059AB8(uint64_t a1)
{
  v2 = sub_100060048(&qword_1000AE3A0, type metadata accessor for SASAnnounce, &unk_10008C6A0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100059B24(uint64_t a1, uint64_t a2)
{
  sub_100060048(&qword_1000AE3A0, type metadata accessor for SASAnnounce, &unk_10008C6A0);

  return Message.hash(into:)();
}

uint64_t sub_100059BC8()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000626E0(v0, qword_1000B19F0);
  sub_10005F434(v0, qword_1000B19F0);
  sub_10005F2A0(&qword_1000AEA58, "8#");
  v1 = (sub_10005F2A0(&qword_1000AEA60, qword_10008D588) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10008C1C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sessionID";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "publicInfo";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "aCommitRandom";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100059EE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100060048(&qword_1000AEA38, type metadata accessor for SASCommit, &unk_10008C880);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100059F84(uint64_t a1)
{
  v2 = sub_100060048(&qword_1000AE3B8, type metadata accessor for SASCommit, &unk_10008C808);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100059FF0(uint64_t a1, uint64_t a2)
{
  sub_100060048(&qword_1000AE3B8, type metadata accessor for SASCommit, &unk_10008C808);

  return Message.hash(into:)();
}

uint64_t sub_10005A0B4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for _NameMap();
  sub_1000626E0(v9, a2);
  sub_10005F434(v9, a2);
  sub_10005F2A0(&qword_1000AEA58, "8#");
  v10 = (sub_10005F2A0(&qword_1000AEA60, qword_10008D588) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10008C1D0;
  v13 = v12 + v11 + v10[14];
  *(v12 + v11) = a3;
  *v13 = a4;
  *(v13 + 8) = a5;
  *(v13 + 16) = 2;
  v14 = enum case for _NameMap.NameDescription.same(_:);
  v15 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10005A270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }

  return result;
}

uint64_t sub_10005A2E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2 || *(v5 + 16) == *(v5 + 24))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v7)
  {
    if (v5 == v5 >> 32)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  type metadata accessor for SASSelected(0);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10005A3AC(_BOOL8 *a1, uint64_t *a2)
{
  if (!sub_10005F578(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  type metadata accessor for SASSelected(0);
  type metadata accessor for UnknownStorage();
  sub_100060048(&qword_1000AE2C0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10005A52C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100060048(&qword_1000AEA30, type metadata accessor for SASSelected, &unk_10008C9E8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10005A5CC(uint64_t a1)
{
  v2 = sub_100060048(&qword_1000AE3D0, type metadata accessor for SASSelected, &unk_10008C970);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10005A638(uint64_t a1, uint64_t a2)
{
  sub_100060048(&qword_1000AE3D0, type metadata accessor for SASSelected, &unk_10008C970);

  return Message.hash(into:)();
}

uint64_t sub_10005A6B4(_BOOL8 *a1, uint64_t *a2, uint64_t a3)
{
  if (!sub_10005F578(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100060048(&qword_1000AE2C0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10005A7AC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for _NameMap();
  sub_1000626E0(v7, a2);
  sub_10005F434(v7, a2);
  sub_10005F2A0(&qword_1000AEA58, "8#");
  v8 = (sub_10005F2A0(&qword_1000AEA60, qword_10008D588) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10008C1B0;
  v12 = (v11 + v10);
  v13 = v11 + v10 + v8[14];
  *v12 = 1;
  *v13 = a3;
  *(v13 + 8) = 9;
  *(v13 + 16) = 2;
  v14 = enum case for _NameMap.NameDescription.same(_:);
  v15 = type metadata accessor for _NameMap.NameDescription();
  v16 = *(*(v15 - 8) + 104);
  (v16)(v13, v14, v15);
  v17 = v12 + v9 + v8[14];
  *(v12 + v9) = 2;
  *v17 = a4;
  *(v17 + 1) = a5;
  v17[16] = 2;
  v16();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10005A9B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
      }

      else if (result == 2)
      {
        sub_100060090();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10005AA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
  }

  else
  {
    if (!v7)
    {
      if ((v6 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      if (v4)
      {
        return result;
      }

      goto LABEL_10;
    }

    v8 = v5;
    v9 = v5 >> 32;
  }

  if (v8 != v9)
  {
    goto LABEL_9;
  }

LABEL_10:
  if ((*(v3 + 24) & 1) != 0 || !*(v3 + 16) || (sub_100060090(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    type metadata accessor for SASTeardown(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10005ABC8@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_10008C190;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  return UnknownStorage.init()();
}

uint64_t sub_10005AC00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10005AC74(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_10005AD3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100060048(&qword_1000AEA28, type metadata accessor for SASTeardown, &unk_10008CB50);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10005ADDC(uint64_t a1)
{
  v2 = sub_100060048(&qword_1000AE3E8, type metadata accessor for SASTeardown, &unk_10008CAD8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10005AE48(uint64_t a1, uint64_t a2)
{
  sub_100060048(&qword_1000AE3E8, type metadata accessor for SASTeardown, &unk_10008CAD8);

  return Message.hash(into:)();
}

uint64_t sub_10005AEEC()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000626E0(v0, qword_1000B1A38);
  sub_10005F434(v0, qword_1000B1A38);
  sub_10005F2A0(&qword_1000AEA58, "8#");
  v1 = (sub_10005F2A0(&qword_1000AEA60, qword_10008D588) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10008C1E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "sessionID";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bRandom";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "publicInfo";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "peerSessionID";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10005B17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
LABEL_9:
          dispatch thunk of Decoder.decodeSingularBytesField(value:)();
        }
      }

      else if (result == 1 || result == 2)
      {
        goto LABEL_9;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10005B228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
  }

  else
  {
    if (!v7)
    {
      if ((v6 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v8 = v5;
    v9 = v5 >> 32;
  }

  if (v8 == v9)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v4)
  {
    return result;
  }

LABEL_10:
  v11 = v3[2];
  v12 = v3[3];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_19;
    }

    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
  }

  else
  {
    if (!v13)
    {
      if ((v12 & 0xFF000000000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v14 = v11;
    v15 = v11 >> 32;
  }

  if (v14 == v15)
  {
    goto LABEL_19;
  }

LABEL_18:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v4)
  {
    return result;
  }

LABEL_19:
  v16 = v3[4];
  v17 = v3[5];
  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v18 != 2)
    {
      goto LABEL_28;
    }

    v19 = *(v16 + 16);
    v20 = *(v16 + 24);
  }

  else
  {
    if (!v18)
    {
      if ((v17 & 0xFF000000000000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    v19 = v16;
    v20 = v16 >> 32;
  }

  if (v19 == v20)
  {
    goto LABEL_28;
  }

LABEL_27:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v4)
  {
    return result;
  }

LABEL_28:
  v21 = v3[6];
  v22 = v3[7];
  v23 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v23 != 2)
    {
      goto LABEL_37;
    }

    v24 = *(v21 + 16);
    v25 = *(v21 + 24);
  }

  else
  {
    if (!v23)
    {
      if ((v22 & 0xFF000000000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_36:
      result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      if (v4)
      {
        return result;
      }

      goto LABEL_37;
    }

    v24 = v21;
    v25 = v21 >> 32;
  }

  if (v24 != v25)
  {
    goto LABEL_36;
  }

LABEL_37:
  type metadata accessor for SASSetupB(0);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10005B438@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_10008C190;
  a1[1] = xmmword_10008C190;
  a1[2] = xmmword_10008C190;
  a1[3] = xmmword_10008C190;
  return UnknownStorage.init()();
}

uint64_t sub_10005B468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10005B4DC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_10005B5A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100060048(&qword_1000AEA20, type metadata accessor for SASSetupB, &unk_10008CCB8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10005B644(uint64_t a1)
{
  v2 = sub_100060048(&qword_1000AE400, type metadata accessor for SASSetupB, &unk_10008CC40);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10005B6B0(uint64_t a1, uint64_t a2)
{
  sub_100060048(&qword_1000AE400, type metadata accessor for SASSetupB, &unk_10008CC40);

  return Message.hash(into:)();
}

uint64_t sub_10005B754()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000626E0(v0, qword_1000B1A50);
  sub_10005F434(v0, qword_1000B1A50);
  sub_10005F2A0(&qword_1000AEA58, "8#");
  v1 = (sub_10005F2A0(&qword_1000AEA60, qword_10008D588) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10008C1C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sessionID";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "aRandom";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "peerSessionID";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10005B9B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }

  return result;
}

uint64_t sub_10005BA6C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = *v4;
  v8 = v4[1];
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_10;
    }

    v10 = *(v7 + 16);
    v11 = *(v7 + 24);
  }

  else
  {
    if (!v9)
    {
      if ((v8 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v10 = v7;
    v11 = v7 >> 32;
  }

  if (v10 == v11)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v5)
  {
    return result;
  }

LABEL_10:
  v13 = v4[2];
  v14 = v4[3];
  v15 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v15 != 2)
    {
      goto LABEL_19;
    }

    v16 = *(v13 + 16);
    v17 = *(v13 + 24);
  }

  else
  {
    if (!v15)
    {
      if ((v14 & 0xFF000000000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v16 = v13;
    v17 = v13 >> 32;
  }

  if (v16 == v17)
  {
    goto LABEL_19;
  }

LABEL_18:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v5)
  {
    return result;
  }

LABEL_19:
  v18 = v4[4];
  v19 = v4[5];
  v20 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v20 != 2)
    {
      goto LABEL_28;
    }

    v21 = *(v18 + 16);
    v22 = *(v18 + 24);
  }

  else
  {
    if (!v20)
    {
      if ((v19 & 0xFF000000000000) == 0)
      {
        goto LABEL_28;
      }

LABEL_27:
      result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      if (v5)
      {
        return result;
      }

      goto LABEL_28;
    }

    v21 = v18;
    v22 = v18 >> 32;
  }

  if (v21 != v22)
  {
    goto LABEL_27;
  }

LABEL_28:
  a4(0);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10005BC60@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_10008C190;
  a1[1] = xmmword_10008C190;
  a1[2] = xmmword_10008C190;
  return UnknownStorage.init()();
}

uint64_t sub_10005BC90(uint64_t a1, uint64_t a2)
{
  v4 = sub_100060048(&qword_1000AEA18, type metadata accessor for SASReveal, &unk_10008CE20);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10005BD30(uint64_t a1)
{
  v2 = sub_100060048(&qword_1000AE418, type metadata accessor for SASReveal, &unk_10008CDA8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10005BD9C(uint64_t a1, uint64_t a2)
{
  sub_100060048(&qword_1000AE418, type metadata accessor for SASReveal, &unk_10008CDA8);

  return Message.hash(into:)();
}

uint64_t sub_10005BE40()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000626E0(v0, qword_1000B1A68);
  sub_10005F434(v0, qword_1000B1A68);
  sub_10005F2A0(&qword_1000AEA58, "8#");
  v1 = (sub_10005F2A0(&qword_1000AEA60, qword_10008D588) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10008C1C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sessionID";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sentTime";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "peerSessionID";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10005C09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        goto LABEL_8;
      case 2:
        dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
        break;
      case 1:
LABEL_8:
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
        break;
    }
  }
}

uint64_t sub_10005C138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
    goto LABEL_8;
  }

  if (v7)
  {
    v8 = v5;
    v9 = v5 >> 32;
LABEL_8:
    if (v8 == v9)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ((v6 & 0xFF000000000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v4)
  {
    return result;
  }

LABEL_10:
  if (!v3[2] || (result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)(), !v4))
  {
    v11 = v3[3];
    v12 = v3[4];
    v13 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v13 != 2)
      {
        goto LABEL_21;
      }

      v14 = *(v11 + 16);
      v15 = *(v11 + 24);
    }

    else
    {
      if (!v13)
      {
        if ((v12 & 0xFF000000000000) == 0)
        {
          goto LABEL_21;
        }

LABEL_20:
        result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
        if (v4)
        {
          return result;
        }

        goto LABEL_21;
      }

      v14 = v11;
      v15 = v11 >> 32;
    }

    if (v14 != v15)
    {
      goto LABEL_20;
    }

LABEL_21:
    type metadata accessor for SASConfirm(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10005C2B8@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_10008C190;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xC000000000000000;
  return UnknownStorage.init()();
}

uint64_t sub_10005C330(uint64_t a1, uint64_t a2)
{
  v4 = sub_100060048(&qword_1000AEA10, type metadata accessor for SASConfirm, &unk_10008CF88);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10005C3D4(uint64_t a1)
{
  v2 = sub_100060048(&qword_1000AE430, type metadata accessor for SASConfirm, &unk_10008CF10);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10005C444(uint64_t a1, uint64_t a2)
{
  sub_100060048(&qword_1000AE430, type metadata accessor for SASConfirm, &unk_10008CF10);

  return Message.hash(into:)();
}

uint64_t sub_10005C4F4()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000626E0(v0, qword_1000B1A80);
  sub_10005F434(v0, qword_1000B1A80);
  sub_10005F2A0(&qword_1000AEA58, "8#");
  v1 = (sub_10005F2A0(&qword_1000AEA60, qword_10008D588) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10008C1C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "errorDomain";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "errorCode";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "underlyingErrors";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10005C750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for ErrorDomainCode(0);
          sub_100060048(&qword_1000AE2F8, type metadata accessor for ErrorDomainCode, &unk_10008D078);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
        case 2:
          dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
          break;
        case 1:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10005C86C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    if (!v3[2] || (result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)(), !v4))
    {
      if (!*(v3[3] + 16) || (type metadata accessor for ErrorDomainCode(0), sub_100060048(&qword_1000AE2F8, type metadata accessor for ErrorDomainCode, &unk_10008D078), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
      {
        type metadata accessor for ErrorDomainCode(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t sub_10005C9EC@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = &_swiftEmptyArrayStorage;
  return UnknownStorage.init()();
}

uint64_t sub_10005CA20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10005CA94(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_10005CB38(uint64_t a1, uint64_t a2)
{
  v4 = sub_100060048(&qword_1000AEA08, type metadata accessor for ErrorDomainCode, &unk_10008D0F0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10005CBD8(uint64_t a1)
{
  v2 = sub_100060048(&qword_1000AE2F8, type metadata accessor for ErrorDomainCode, &unk_10008D078);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10005CC44(uint64_t a1, uint64_t a2)
{
  sub_100060048(&qword_1000AE2F8, type metadata accessor for ErrorDomainCode, &unk_10008D078);

  return Message.hash(into:)();
}

uint64_t sub_10005CD50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for IDSFailingDevice(0);
        type metadata accessor for ErrorDomainCode(0);
        sub_100060048(&qword_1000AE2F8, type metadata accessor for ErrorDomainCode, &unk_10008D078);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10005CE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_10;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
LABEL_8:
    if (v11 == v12)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v10)
  {
    v11 = v8;
    v12 = v8 >> 32;
    goto LABEL_8;
  }

  if ((v9 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  result = sub_10005CF30(v3, a1, a2, a3);
  if (!v4)
  {
    type metadata accessor for IDSFailingDevice(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10005CF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10005F2A0(&qword_1000AE2A0, &qword_10008C2A8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ErrorDomainCode(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for IDSFailingDevice(0);
  sub_10005F308(a1 + *(v12 + 24), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_100062680(v7, &qword_1000AE2A0, &qword_10008C2A8);
  }

  sub_10005F378(v7, v11);
  sub_100060048(&qword_1000AE2F8, type metadata accessor for ErrorDomainCode, &unk_10008D078);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100062620(v11, type metadata accessor for ErrorDomainCode);
}

uint64_t sub_10005D170@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = xmmword_10008C190;
  UnknownStorage.init()();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for ErrorDomainCode(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_10005D1FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10005D270(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_10005D314(uint64_t a1, uint64_t a2)
{
  v4 = sub_100060048(&qword_1000AEA00, type metadata accessor for IDSFailingDevice, &unk_10008D258);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10005D3B4(uint64_t a1)
{
  v2 = sub_100060048(&qword_1000AE310, type metadata accessor for IDSFailingDevice, &unk_10008D1E0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10005D420(uint64_t a1, uint64_t a2)
{
  sub_100060048(&qword_1000AE310, type metadata accessor for IDSFailingDevice, &unk_10008D1E0);

  return Message.hash(into:)();
}

uint64_t sub_10005D4BC()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000626E0(v0, qword_1000B1AB0);
  sub_10005F434(v0, qword_1000B1AB0);
  sub_10005F2A0(&qword_1000AEA58, "8#");
  v1 = (sub_10005F2A0(&qword_1000AEA60, qword_10008D588) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10008C1F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "unique";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "title";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "description";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "relatedRadar";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "radar";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "idsFailingDevices";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10005D7A8(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for _NameMap();

  return sub_10005F434(v3, a2);
}

uint64_t sub_10005D820@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = sub_10005F434(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_10005D8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result > 3)
      {
        if (result == 4 || result == 5)
        {
          dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
        }

        else if (result == 6)
        {
          type metadata accessor for IDSFailingDevice(0);
          sub_100060048(&qword_1000AE310, type metadata accessor for IDSFailingDevice, &unk_10008D1E0);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      else if (result == 1 || result == 2 || result == 3)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10005DA0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    v8 = v3[3];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
    {
      v10 = v3[5];
      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v3[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v11 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
      {
        if (!v3[6] || (result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)(), !v4))
        {
          if (!v3[7] || (result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)(), !v4))
          {
            if (!*(v3[8] + 16) || (type metadata accessor for IDSFailingDevice(0), sub_100060048(&qword_1000AE310, type metadata accessor for IDSFailingDevice, &unk_10008D1E0), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
            {
              type metadata accessor for SASTTR(0);
              return UnknownStorage.traverse<A>(visitor:)();
            }
          }
        }
      }
    }
  }

  return result;
}

Swift::Int sub_10005DC0C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  sub_100060048(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10005DC94@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = &_swiftEmptyArrayStorage;
  return UnknownStorage.init()();
}

uint64_t sub_10005DCD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10005DD48(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_10005DE10(uint64_t a1, uint64_t a2)
{
  v4 = sub_100060048(&qword_1000AE9F8, type metadata accessor for SASTTR, &unk_10008D3C0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10005DEB0@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for _NameMap();
  v7 = sub_10005F434(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_10005DF4C(uint64_t a1)
{
  v2 = sub_100060048(&qword_1000AE468, type metadata accessor for SASTTR, &unk_10008D348);

  return Message.debugDescription.getter(a1, v2);
}

Swift::Int sub_10005DFB8(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10005E010(uint64_t a1, uint64_t a2)
{
  sub_100060048(&qword_1000AE468, type metadata accessor for SASTTR, &unk_10008D348);

  return Message.hash(into:)();
}

Swift::Int sub_10005E08C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10005E0E0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_10005E310(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_10005F4C0(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_10005F14C(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_10005E0E0(v13, a3, a4, &v12);
  v10 = v4;
  sub_10005F14C(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_10005E4A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ErrorDomainCode(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v70 = (&v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10005F2A0(&qword_1000AE2A0, &qword_10008C2A8);
  __chkstk_darwin(v7 - 8);
  v72 = (&v60 - v8);
  v71 = sub_10005F2A0(&qword_1000AEA50, "4#");
  __chkstk_darwin(v71);
  v10 = &v60 - v9;
  v73 = type metadata accessor for IDSFailingDevice(0);
  v11 = __chkstk_darwin(v73);
  v13 = (&v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v16 = (&v60 - v15);
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
    goto LABEL_75;
  }

  if (!v17 || a1 == a2)
  {
    v58 = 1;
    return v58 & 1;
  }

  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v21 = *(v14 + 72);
  v67 = 0;
  v68 = v21;
  v63 = v4;
  v69 = (v5 + 48);
  v65 = v13;
  v66 = (&v60 - v15);
  while (1)
  {
    sub_1000625B8(v19, v16, type metadata accessor for IDSFailingDevice);
    sub_1000625B8(v20, v13, type metadata accessor for IDSFailingDevice);
    v22 = *v16;
    v23 = v16[1];
    v24 = *v13;
    v25 = v13[1];
    v26 = v23 >> 62;
    v27 = v25 >> 62;
    if (v23 >> 62 == 3)
    {
      v28 = 0;
      if (!v22 && v23 == 0xC000000000000000 && v25 >> 62 == 3)
      {
        v28 = 0;
        if (!v24 && v25 == 0xC000000000000000)
        {
          goto LABEL_55;
        }
      }

LABEL_21:
      if (v27 <= 1)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    if (v26 > 1)
    {
      if (v26 == 2)
      {
        v34 = *(v22 + 16);
        v33 = *(v22 + 24);
        v31 = __OFSUB__(v33, v34);
        v28 = v33 - v34;
        if (v31)
        {
          goto LABEL_80;
        }

        goto LABEL_21;
      }

      v28 = 0;
      if (v27 <= 1)
      {
        goto LABEL_22;
      }
    }

    else if (v26)
    {
      LODWORD(v28) = HIDWORD(v22) - v22;
      if (__OFSUB__(HIDWORD(v22), v22))
      {
        goto LABEL_79;
      }

      v28 = v28;
      if (v27 <= 1)
      {
LABEL_22:
        if (v27)
        {
          LODWORD(v32) = HIDWORD(v24) - v24;
          if (__OFSUB__(HIDWORD(v24), v24))
          {
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
          }

          v32 = v32;
        }

        else
        {
          v32 = BYTE6(v25);
        }

        goto LABEL_28;
      }
    }

    else
    {
      v28 = BYTE6(v23);
      if (v27 <= 1)
      {
        goto LABEL_22;
      }
    }

LABEL_15:
    if (v27 != 2)
    {
      if (v28)
      {
        goto LABEL_74;
      }

      goto LABEL_55;
    }

    v30 = *(v24 + 16);
    v29 = *(v24 + 24);
    v31 = __OFSUB__(v29, v30);
    v32 = v29 - v30;
    if (v31)
    {
      goto LABEL_78;
    }

LABEL_28:
    if (v28 != v32)
    {
      goto LABEL_74;
    }

    if (v28 < 1)
    {
      goto LABEL_55;
    }

    if (v26 > 1)
    {
      if (v26 != 2)
      {
        memset(v75, 0, 14);
LABEL_47:
        v45 = v67;
        sub_10005E0E0(v75, v24, v25, &v74);
        v67 = v45;
        if (!v74)
        {
          goto LABEL_74;
        }

        goto LABEL_55;
      }

      v64 = *v13;
      v35 = *(v22 + 16);
      v61 = *(v22 + 24);
      v62 = v35;
      v36 = __DataStorage._bytes.getter();
      if (v36)
      {
        v37 = v36;
        v38 = __DataStorage._offset.getter();
        v39 = v62;
        if (__OFSUB__(v62, v38))
        {
          goto LABEL_83;
        }

        v60 = v62 - v38 + v37;
      }

      else
      {
        v60 = 0;
        v39 = v62;
      }

      if (__OFSUB__(v61, v39))
      {
        goto LABEL_82;
      }

      __DataStorage._length.getter();
      v46 = v60;
    }

    else
    {
      if (!v26)
      {
        v75[0] = *v16;
        LOWORD(v75[1]) = v23;
        BYTE2(v75[1]) = BYTE2(v23);
        BYTE3(v75[1]) = BYTE3(v23);
        BYTE4(v75[1]) = BYTE4(v23);
        BYTE5(v75[1]) = BYTE5(v23);
        goto LABEL_47;
      }

      v64 = *v13;
      v40 = v22;
      v41 = v22 >> 32;
      v62 = v41 - v40;
      if (v41 < v40)
      {
        goto LABEL_81;
      }

      v42 = __DataStorage._bytes.getter();
      if (v42)
      {
        v61 = v42;
        v43 = __DataStorage._offset.getter();
        if (__OFSUB__(v40, v43))
        {
          goto LABEL_84;
        }

        v44 = v40 - v43 + v61;
      }

      else
      {
        v44 = 0;
      }

      __DataStorage._length.getter();
      v46 = v44;
    }

    v47 = v67;
    sub_10005E0E0(v46, v64, v25, v75);
    v67 = v47;
    v4 = v63;
    if ((v75[0] & 1) == 0)
    {
      goto LABEL_74;
    }

LABEL_55:
    v48 = *(v73 + 24);
    v49 = *(v71 + 48);
    sub_10005F308(v16 + v48, v10);
    sub_10005F308(v13 + v48, &v10[v49]);
    v50 = *v69;
    if ((*v69)(v10, 1, v4) != 1)
    {
      break;
    }

    if (v50(&v10[v49], 1, v4) != 1)
    {
      goto LABEL_73;
    }

LABEL_66:
    sub_100062680(v10, &qword_1000AE2A0, &qword_10008C2A8);
    type metadata accessor for UnknownStorage();
    sub_100060048(&qword_1000AE2C0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v58 = dispatch thunk of static Equatable.== infix(_:_:)();
    sub_100062620(v13, type metadata accessor for IDSFailingDevice);
    sub_100062620(v16, type metadata accessor for IDSFailingDevice);
    if (v58)
    {
      v20 += v68;
      v19 += v68;
      if (--v17)
      {
        continue;
      }
    }

    return v58 & 1;
  }

  v51 = v72;
  sub_10005F308(v10, v72);
  if (v50(&v10[v49], 1, v4) == 1)
  {
    sub_100062620(v51, type metadata accessor for ErrorDomainCode);
    v13 = v65;
    v16 = v66;
LABEL_73:
    sub_100062680(v10, &qword_1000AEA50, "4#");
    goto LABEL_74;
  }

  v52 = &v10[v49];
  v53 = v70;
  sub_10005F378(v52, v70);
  v54 = v51;
  if (*v51 == *v53 && v51[1] == v53[1] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v51[2] == v53[2] && (sub_10005ED94(v51[3], v53[3]))
  {
    v55 = v53;
    type metadata accessor for UnknownStorage();
    sub_100060048(&qword_1000AE2C0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v56 = dispatch thunk of static Equatable.== infix(_:_:)();
    v54 = v72;
    v57 = v56;
    sub_100062620(v55, type metadata accessor for ErrorDomainCode);
    v13 = v65;
    if ((v57 & 1) == 0)
    {
      goto LABEL_71;
    }

    sub_100062620(v54, type metadata accessor for ErrorDomainCode);
    v16 = v66;
    goto LABEL_66;
  }

  sub_100062620(v53, type metadata accessor for ErrorDomainCode);
  v13 = v65;
LABEL_71:
  sub_100062620(v54, type metadata accessor for ErrorDomainCode);
  sub_100062680(v10, &qword_1000AE2A0, &qword_10008C2A8);
  v16 = v66;
LABEL_74:
  sub_100062620(v13, type metadata accessor for IDSFailingDevice);
  sub_100062620(v16, type metadata accessor for IDSFailingDevice);
LABEL_75:
  v58 = 0;
  return v58 & 1;
}

uint64_t sub_10005ED94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ErrorDomainCode(0);
  v5 = __chkstk_darwin(v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v10 = (&v19 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_17:
    v17 = 0;
    return v17 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1000625B8(v13, v10, type metadata accessor for ErrorDomainCode);
      sub_1000625B8(v14, v7, type metadata accessor for ErrorDomainCode);
      v16 = *v10 == *v7 && v10[1] == v7[1];
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v10[2] != v7[2] || (sub_10005ED94(v10[3], v7[3]) & 1) == 0)
      {
        break;
      }

      type metadata accessor for UnknownStorage();
      sub_100060048(&qword_1000AE2C0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_100062620(v7, type metadata accessor for ErrorDomainCode);
      sub_100062620(v10, type metadata accessor for ErrorDomainCode);
      if (v17)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v17 & 1;
    }

    sub_100062620(v7, type metadata accessor for ErrorDomainCode);
    sub_100062620(v10, type metadata accessor for ErrorDomainCode);
    goto LABEL_17;
  }

  v17 = 1;
  return v17 & 1;
}

uint64_t sub_10005F018(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 32;
  v4 = a2 + 32;
  result = sub_100060520();
  while (v2)
  {
    v3 += 8;
    v4 += 8;
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    result = v8 == v7;
    if (v8 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_10005F0F8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

void sub_10005F14C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t sub_10005F2A0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10005F308(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005F2A0(&qword_1000AE2A0, &qword_10008C2A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005F378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ErrorDomainCode(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005F3FC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005F434(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_10005F46C()
{
  result = qword_1000AE2A8;
  if (!qword_1000AE2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE2A8);
  }

  return result;
}

uint64_t sub_10005F4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_10005E0E0(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_10005F578(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_10005F0F8(a3, a4);
          return sub_10005E310(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10005F6E0(uint64_t a1, uint64_t a2)
{
  if (!sub_10005F578(*a1, *(a1 + 8), *a2, *(a2 + 8)) || !sub_10005F578(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) || !sub_10005F578(*(a1 + 32), *(a1 + 40), *(a2 + 32), *(a2 + 40)) || !sub_10005F578(*(a1 + 48), *(a1 + 56), *(a2 + 48), *(a2 + 56)))
  {
    return 0;
  }

  type metadata accessor for SASSetupB(0);
  type metadata accessor for UnknownStorage();
  sub_100060048(&qword_1000AE2C0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10005F7C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!sub_10005F578(*a1, *(a1 + 8), *a2, *(a2 + 8)) || !sub_10005F578(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) || !sub_10005F578(*(a1 + 32), *(a1 + 40), *(a2 + 32), *(a2 + 40)))
  {
    return 0;
  }

  a3(0);
  type metadata accessor for UnknownStorage();
  sub_100060048(&qword_1000AE2C0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10005F898(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (a1[6] != a2[6] || a1[7] != a2[7] || (sub_10005E4A0(a1[8], a2[8]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for SASTTR(0);
  type metadata accessor for UnknownStorage();
  sub_100060048(&qword_1000AE2C0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10005F9CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ErrorDomainCode(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10005F2A0(&qword_1000AE2A0, &qword_10008C2A8);
  __chkstk_darwin(v8 - 8);
  v10 = (&v23 - v9);
  v11 = sub_10005F2A0(&qword_1000AEA50, "4#");
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  if (!sub_10005F578(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    goto LABEL_20;
  }

  v14 = *(type metadata accessor for IDSFailingDevice(0) + 24);
  v15 = *(v11 + 48);
  sub_10005F308(a1 + v14, v13);
  sub_10005F308(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_10005F308(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_10005F378(&v13[v15], v7);
      v20 = *v10 == *v7 && v10[1] == v7[1];
      if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v10[2] == v7[2] && (sub_10005ED94(v10[3], v7[3]))
      {
        type metadata accessor for UnknownStorage();
        sub_100060048(&qword_1000AE2C0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v21 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100062620(v7, type metadata accessor for ErrorDomainCode);
        sub_100062620(v10, type metadata accessor for ErrorDomainCode);
        sub_100062680(v13, &qword_1000AE2A0, &qword_10008C2A8);
        if (v21)
        {
          goto LABEL_5;
        }

LABEL_20:
        v17 = 0;
        return v17 & 1;
      }

      sub_100062620(v7, type metadata accessor for ErrorDomainCode);
      sub_100062620(v10, type metadata accessor for ErrorDomainCode);
      v18 = &qword_1000AE2A0;
      v19 = &qword_10008C2A8;
LABEL_19:
      sub_100062680(v13, v18, v19);
      goto LABEL_20;
    }

    sub_100062620(v10, type metadata accessor for ErrorDomainCode);
LABEL_8:
    v18 = &qword_1000AEA50;
    v19 = "4#";
    goto LABEL_19;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_100062680(v13, &qword_1000AE2A0, &qword_10008C2A8);
LABEL_5:
  type metadata accessor for UnknownStorage();
  sub_100060048(&qword_1000AE2C0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v17 & 1;
}

uint64_t sub_10005FDBC(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || a1[2] != a2[2] || (sub_10005ED94(a1[3], a2[3]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ErrorDomainCode(0);
  type metadata accessor for UnknownStorage();
  sub_100060048(&qword_1000AE2C0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10005FE9C(uint64_t a1, uint64_t a2)
{
  if (!sub_10005F578(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  if (*(a1 + 24))
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      v4 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v4 = *(a1 + 16);
    if ((*(a2 + 24) & 1) == 0)
    {
LABEL_8:
      if (v4 == *(a2 + 16))
      {
        goto LABEL_9;
      }

      return 0;
    }

    if (v4)
    {
      return 0;
    }
  }

LABEL_9:
  type metadata accessor for SASTeardown(0);
  type metadata accessor for UnknownStorage();
  sub_100060048(&qword_1000AE2C0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10005FF7C(uint64_t a1, uint64_t a2)
{
  if ((sub_10005F018(*a1, *a2) & 1) == 0 || !sub_10005F578(*(a1 + 8), *(a1 + 16), *(a2 + 8), *(a2 + 16)) || !sub_10005F578(*(a1 + 24), *(a1 + 32), *(a2 + 24), *(a2 + 32)))
  {
    return 0;
  }

  type metadata accessor for SASAnnounce(0);
  type metadata accessor for UnknownStorage();
  sub_100060048(&qword_1000AE2C0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100060048(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100060090()
{
  result = qword_1000AE2D0;
  if (!qword_1000AE2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE2D0);
  }

  return result;
}

uint64_t sub_1000600E4(_BOOL8 *a1, uint64_t *a2)
{
  if (!sub_10005F578(*a1, a1[1], *a2, a2[1]) || a1[2] != a2[2] || !sub_10005F578(a1[3], a1[4], a2[3], a2[4]))
  {
    return 0;
  }

  type metadata accessor for SASConfirm(0);
  type metadata accessor for UnknownStorage();
  sub_100060048(&qword_1000AE2C0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

unint64_t sub_1000601B8()
{
  result = qword_1000AE320;
  if (!qword_1000AE320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE320);
  }

  return result;
}

unint64_t sub_100060210()
{
  result = qword_1000AE328;
  if (!qword_1000AE328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE328);
  }

  return result;
}

uint64_t sub_100060294(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000602E0()
{
  result = qword_1000AE340;
  if (!qword_1000AE340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE340);
  }

  return result;
}

unint64_t sub_100060338()
{
  result = qword_1000AE348;
  if (!qword_1000AE348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE348);
  }

  return result;
}

unint64_t sub_100060390()
{
  result = qword_1000AE350;
  if (!qword_1000AE350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE350);
  }

  return result;
}

unint64_t sub_100060418()
{
  result = qword_1000AE368;
  if (!qword_1000AE368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE368);
  }

  return result;
}

unint64_t sub_100060470()
{
  result = qword_1000AE370;
  if (!qword_1000AE370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE370);
  }

  return result;
}

unint64_t sub_1000604C8()
{
  result = qword_1000AE378;
  if (!qword_1000AE378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE378);
  }

  return result;
}

unint64_t sub_100060520()
{
  result = qword_1000AE380;
  if (!qword_1000AE380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE380);
  }

  return result;
}

uint64_t sub_1000605A4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100060294(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for SASIDSProtocolNumbers(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SASTeardownReason(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SASTeardownReason(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1000611B0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000611CC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_100061220(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1000612E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100061384(uint64_t a1)
{
  sub_100061418();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100061418()
{
  if (!qword_1000AE4D0)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1000AE4D0);
    }
  }
}

uint64_t sub_1000614B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100061584(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100061630(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000616C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_10006178C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100061838(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000618D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_10006199C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100061A48(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100061B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_100061BD0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100061C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100061D20(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100061DE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100061E84(uint64_t a1)
{
  sub_1000622B0(319, &unk_1000AE890, type metadata accessor for ErrorDomainCode, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100061F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10005F2A0(&qword_1000AE2A0, &qword_10008C2A8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1000620B4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10005F2A0(&qword_1000AE2A0, &qword_10008C2A8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1000621EC(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_1000622B0(319, &unk_1000AE920, type metadata accessor for ErrorDomainCode, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000622B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100062328(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000623E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10006248C(uint64_t a1)
{
  sub_1000622B0(319, &unk_1000AE9B0, type metadata accessor for IDSFailingDevice, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100062564()
{
  result = qword_1000AEA48;
  if (!qword_1000AEA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEA48);
  }

  return result;
}

uint64_t sub_1000625B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100062620(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100062680(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10005F2A0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *sub_1000626E0(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_100062804@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10006CC3C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

Swift::Int sub_100062860()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000628D8(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void *sub_10006291C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result != 0;
  *a2 = 0;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1000629D4(uint64_t a1)
{
  v3 = (*((swift_isaMask & *v1) + 0x68))(v11);
  v5 = v4;
  v6 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_10006CB38(0, *(v6 + 2) + 1, 1, v6);
    *v5 = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_10006CB38((v8 > 1), v9 + 1, 1, v6);
    *v5 = v6;
  }

  *(v6 + 2) = v9 + 1;
  *&v6[8 * v9 + 32] = a1;
  return v3(v11, 0);
}

uint64_t sub_100062D10()
{
  v1 = type metadata accessor for SASAnnounce(0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v0) + 0x58))(v2);
  v5 = *(v4 + 1);
  sub_10005F0F8(v5, *(v4 + 2));
  sub_10006CDDC(v4, type metadata accessor for SASAnnounce);
  return v5;
}

void sub_100062EC8(uint64_t a1, unint64_t a2)
{
  v5 = *((swift_isaMask & *v2) + 0x68);
  sub_10005F0F8(a1, a2);
  v6 = v5(v10);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  *(v7 + 8) = a1;
  *(v7 + 16) = a2;
  sub_10005F14C(v8, v9);
  v6(v10, 0);
  sub_10005F14C(a1, a2);
}

void (*sub_100062F78(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(*(type metadata accessor for SASAnnounce(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[11] = v6;
  (*((swift_isaMask & *v1) + 0x58))();
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  sub_10005F0F8(v8, v9);
  sub_10006CDDC(v7, type metadata accessor for SASAnnounce);
  v4[8] = v8;
  v4[9] = v9;
  return sub_100063090;
}

void sub_100063090(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 64);
  v5 = *(*a1 + 72);
  v6 = *((swift_isaMask & **(*a1 + 80)) + 0x68);
  sub_10005F0F8(v4, v5);
  v7 = v3[11];
  if (a2)
  {
    sub_10005F0F8(v4, v5);
    v8 = v6(v3);
    v10 = *(v9 + 8);
    v11 = *(v9 + 16);
    *(v9 + 8) = v4;
    *(v9 + 16) = v5;
    sub_10005F14C(v10, v11);
    v8(v3, 0);
    sub_10005F14C(v4, v5);
    v12 = v3[8];
    v13 = v3[9];
  }

  else
  {
    v14 = v6(v3 + 4);
    v16 = *(v15 + 8);
    v17 = *(v15 + 16);
    *(v15 + 8) = v4;
    *(v15 + 16) = v5;
    sub_10005F14C(v16, v17);
    v14(v3 + 4, 0);
    v12 = v4;
    v13 = v5;
  }

  sub_10005F14C(v12, v13);
  free(v7);

  free(v3);
}

uint64_t sub_1000632EC()
{
  v1 = type metadata accessor for SASAnnounce(0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v0) + 0x58))(v2);
  v5 = *(v4 + 3);
  sub_10005F0F8(v5, *(v4 + 4));
  sub_10006CDDC(v4, type metadata accessor for SASAnnounce);
  return v5;
}

void sub_1000634A4(uint64_t a1, unint64_t a2)
{
  v5 = *((swift_isaMask & *v2) + 0x68);
  sub_10005F0F8(a1, a2);
  v6 = v5(v10);
  v8 = *(v7 + 24);
  v9 = *(v7 + 32);
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  sub_10005F14C(v8, v9);
  v6(v10, 0);
  sub_10005F14C(a1, a2);
}

void (*sub_100063554(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(*(type metadata accessor for SASAnnounce(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[11] = v6;
  (*((swift_isaMask & *v1) + 0x58))();
  v8 = *(v7 + 24);
  v9 = *(v7 + 32);
  sub_10005F0F8(v8, v9);
  sub_10006CDDC(v7, type metadata accessor for SASAnnounce);
  v4[8] = v8;
  v4[9] = v9;
  return sub_10006366C;
}

void sub_10006366C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 64);
  v5 = *(*a1 + 72);
  v6 = *((swift_isaMask & **(*a1 + 80)) + 0x68);
  sub_10005F0F8(v4, v5);
  v7 = v3[11];
  if (a2)
  {
    sub_10005F0F8(v4, v5);
    v8 = v6(v3);
    v10 = *(v9 + 24);
    v11 = *(v9 + 32);
    *(v9 + 24) = v4;
    *(v9 + 32) = v5;
    sub_10005F14C(v10, v11);
    v8(v3, 0);
    sub_10005F14C(v4, v5);
    v12 = v3[8];
    v13 = v3[9];
  }

  else
  {
    v14 = v6(v3 + 4);
    v16 = *(v15 + 24);
    v17 = *(v15 + 32);
    *(v15 + 24) = v4;
    *(v15 + 32) = v5;
    sub_10005F14C(v16, v17);
    v14(v3 + 4, 0);
    v12 = v4;
    v13 = v5;
  }

  sub_10005F14C(v12, v13);
  free(v7);

  free(v3);
}

void *sub_1000637FC(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for SASAnnounce(0);
  __chkstk_darwin(v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;
  v18 = a2;
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  sub_10005F0F8(a1, a2);
  BinaryDecodingOptions.init()();
  sub_10006CE3C(&qword_1000AE3A0, type metadata accessor for SASAnnounce, &unk_10008C6A0);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v3)
  {
    sub_10005F14C(a1, a2);
    type metadata accessor for GSASAnnounce(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_10006CEA4(v10, v2 + OBJC_IVAR____TtC21transparencyStaticKey12GSASAnnounce_announce, type metadata accessor for SASAnnounce);
    v11 = type metadata accessor for GSASAnnounce(0);
    v13.receiver = v2;
    v13.super_class = v11;
    v4 = objc_msgSendSuper2(&v13, "init");
    sub_10005F14C(a1, a2);
  }

  return v4;
}

id sub_100063A44()
{
  v1 = type metadata accessor for SASAnnounce(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000576BC(v3);
  sub_10006CEA4(v3, v0 + OBJC_IVAR____TtC21transparencyStaticKey12GSASAnnounce_announce, type metadata accessor for SASAnnounce);
  v4 = type metadata accessor for GSASAnnounce(0);
  v6.receiver = v0;
  v6.super_class = v4;
  return objc_msgSendSuper2(&v6, "init");
}

uint64_t sub_100063D50()
{
  v1 = type metadata accessor for SASAnnounce(0);
  v2 = __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v0) + 0x58))(v2);
  sub_10006CE3C(&qword_1000AE3A0, type metadata accessor for SASAnnounce, &unk_10008C6A0);
  v5 = Message.serializedData(partial:)();
  sub_10006CDDC(v4, type metadata accessor for SASAnnounce);
  return v5;
}

uint64_t sub_100063F00@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  return sub_10006CD0C(v3 + v6, a3, a2);
}

uint64_t sub_100063F7C(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v6 = *a2;
  swift_beginAccess();
  sub_10006CD74(a1, v3 + v6, a3);
  return swift_endAccess();
}

uint64_t sub_100064158()
{
  v1 = type metadata accessor for SASSelected(0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v0) + 0x58))(v2);
  v5 = *v4;
  sub_10005F0F8(*v4, *(v4 + 1));
  sub_10006CDDC(v4, type metadata accessor for SASSelected);
  return v5;
}

void sub_100064310(uint64_t a1, unint64_t a2)
{
  v5 = *((swift_isaMask & *v2) + 0x68);
  sub_10005F0F8(a1, a2);
  v6 = v5(v10);
  v8 = *v7;
  v9 = v7[1];
  *v7 = a1;
  v7[1] = a2;
  sub_10005F14C(v8, v9);
  v6(v10, 0);
  sub_10005F14C(a1, a2);
}

void (*sub_1000643C0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(*(type metadata accessor for SASSelected(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[11] = v6;
  (*((swift_isaMask & *v1) + 0x58))();
  v8 = *v7;
  v9 = v7[1];
  sub_10005F0F8(*v7, v9);
  sub_10006CDDC(v7, type metadata accessor for SASSelected);
  v4[8] = v8;
  v4[9] = v9;
  return sub_1000644D8;
}

void sub_1000644D8(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 64);
  v5 = *(*a1 + 72);
  v6 = *((swift_isaMask & **(*a1 + 80)) + 0x68);
  sub_10005F0F8(v4, v5);
  v7 = v3[11];
  if (a2)
  {
    sub_10005F0F8(v4, v5);
    v8 = v6(v3);
    v10 = *v9;
    v11 = v9[1];
    *v9 = v4;
    v9[1] = v5;
    sub_10005F14C(v10, v11);
    v8(v3, 0);
    sub_10005F14C(v4, v5);
    v12 = v3[8];
    v13 = v3[9];
  }

  else
  {
    v14 = v6(v3 + 4);
    v16 = *v15;
    v17 = v15[1];
    *v15 = v4;
    v15[1] = v5;
    sub_10005F14C(v16, v17);
    v14(v3 + 4, 0);
    v12 = v4;
    v13 = v5;
  }

  sub_10005F14C(v12, v13);
  free(v7);

  free(v3);
}

void *sub_100064668(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for SASSelected(0);
  __chkstk_darwin(v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;
  v18 = a2;
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  sub_10005F0F8(a1, a2);
  BinaryDecodingOptions.init()();
  sub_10006CE3C(&qword_1000AE3D0, type metadata accessor for SASSelected, &unk_10008C970);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v3)
  {
    sub_10005F14C(a1, a2);
    type metadata accessor for GSASSelected(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_10006CEA4(v10, v2 + OBJC_IVAR____TtC21transparencyStaticKey12GSASSelected_selected, type metadata accessor for SASSelected);
    v11 = type metadata accessor for GSASSelected(0);
    v13.receiver = v2;
    v13.super_class = v11;
    v4 = objc_msgSendSuper2(&v13, "init");
    sub_10005F14C(a1, a2);
  }

  return v4;
}

uint64_t sub_1000648B0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = a3;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  return a5(v7, v9);
}

id sub_100064964()
{
  v1 = type metadata accessor for SASSelected(0);
  __chkstk_darwin(v1 - 8);
  v3 = (&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100057A30(v3);
  sub_10006CEA4(v3, v0 + OBJC_IVAR____TtC21transparencyStaticKey12GSASSelected_selected, type metadata accessor for SASSelected);
  v4 = type metadata accessor for GSASSelected(0);
  v6.receiver = v0;
  v6.super_class = v4;
  return objc_msgSendSuper2(&v6, "init");
}

uint64_t sub_100064C70()
{
  v1 = type metadata accessor for SASSelected(0);
  v2 = __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v0) + 0x58))(v2);
  sub_10006CE3C(&qword_1000AE3D0, type metadata accessor for SASSelected, &unk_10008C970);
  v5 = Message.serializedData(partial:)();
  sub_10006CDDC(v4, type metadata accessor for SASSelected);
  return v5;
}

id sub_100064DC8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100064FF8()
{
  v1 = type metadata accessor for SASSetupB(0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v0) + 0x58))(v2);
  v5 = *v4;
  sub_10005F0F8(*v4, *(v4 + 1));
  sub_10006CDDC(v4, type metadata accessor for SASSetupB);
  return v5;
}

void sub_1000651B0(uint64_t a1, unint64_t a2)
{
  v5 = *((swift_isaMask & *v2) + 0x68);
  sub_10005F0F8(a1, a2);
  v6 = v5(v10);
  v8 = *v7;
  v9 = v7[1];
  *v7 = a1;
  v7[1] = a2;
  sub_10005F14C(v8, v9);
  v6(v10, 0);
  sub_10005F14C(a1, a2);
}

void (*sub_100065260(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(*(type metadata accessor for SASSetupB(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[11] = v6;
  (*((swift_isaMask & *v1) + 0x58))();
  v8 = *v7;
  v9 = v7[1];
  sub_10005F0F8(*v7, v9);
  sub_10006CDDC(v7, type metadata accessor for SASSetupB);
  v4[8] = v8;
  v4[9] = v9;
  return sub_100065378;
}

void sub_100065378(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 64);
  v5 = *(*a1 + 72);
  v6 = *((swift_isaMask & **(*a1 + 80)) + 0x68);
  sub_10005F0F8(v4, v5);
  v7 = v3[11];
  if (a2)
  {
    sub_10005F0F8(v4, v5);
    v8 = v6(v3);
    v10 = *v9;
    v11 = v9[1];
    *v9 = v4;
    v9[1] = v5;
    sub_10005F14C(v10, v11);
    v8(v3, 0);
    sub_10005F14C(v4, v5);
    v12 = v3[8];
    v13 = v3[9];
  }

  else
  {
    v14 = v6(v3 + 4);
    v16 = *v15;
    v17 = v15[1];
    *v15 = v4;
    v15[1] = v5;
    sub_10005F14C(v16, v17);
    v14(v3 + 4, 0);
    v12 = v4;
    v13 = v5;
  }

  sub_10005F14C(v12, v13);
  free(v7);

  free(v3);
}

uint64_t sub_1000655D4()
{
  v1 = type metadata accessor for SASSetupB(0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v0) + 0x58))(v2);
  v5 = *(v4 + 4);
  sub_10005F0F8(v5, *(v4 + 5));
  sub_10006CDDC(v4, type metadata accessor for SASSetupB);
  return v5;
}

void sub_10006578C(uint64_t a1, unint64_t a2)
{
  v5 = *((swift_isaMask & *v2) + 0x68);
  sub_10005F0F8(a1, a2);
  v6 = v5(v10);
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  sub_10005F14C(v8, v9);
  v6(v10, 0);
  sub_10005F14C(a1, a2);
}

void (*sub_10006583C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(*(type metadata accessor for SASSetupB(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[11] = v6;
  (*((swift_isaMask & *v1) + 0x58))();
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  sub_10005F0F8(v8, v9);
  sub_10006CDDC(v7, type metadata accessor for SASSetupB);
  v4[8] = v8;
  v4[9] = v9;
  return sub_100065954;
}

void sub_100065954(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 64);
  v5 = *(*a1 + 72);
  v6 = *((swift_isaMask & **(*a1 + 80)) + 0x68);
  sub_10005F0F8(v4, v5);
  v7 = v3[11];
  if (a2)
  {
    sub_10005F0F8(v4, v5);
    v8 = v6(v3);
    v10 = *(v9 + 32);
    v11 = *(v9 + 40);
    *(v9 + 32) = v4;
    *(v9 + 40) = v5;
    sub_10005F14C(v10, v11);
    v8(v3, 0);
    sub_10005F14C(v4, v5);
    v12 = v3[8];
    v13 = v3[9];
  }

  else
  {
    v14 = v6(v3 + 4);
    v16 = *(v15 + 32);
    v17 = *(v15 + 40);
    *(v15 + 32) = v4;
    *(v15 + 40) = v5;
    sub_10005F14C(v16, v17);
    v14(v3 + 4, 0);
    v12 = v4;
    v13 = v5;
  }

  sub_10005F14C(v12, v13);
  free(v7);

  free(v3);
}

uint64_t sub_100065BB0()
{
  v1 = type metadata accessor for SASSetupB(0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v0) + 0x58))(v2);
  v5 = *(v4 + 2);
  sub_10005F0F8(v5, *(v4 + 3));
  sub_10006CDDC(v4, type metadata accessor for SASSetupB);
  return v5;
}

void sub_100065D68(uint64_t a1, unint64_t a2)
{
  v5 = *((swift_isaMask & *v2) + 0x68);
  sub_10005F0F8(a1, a2);
  v6 = v5(v10);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  sub_10005F14C(v8, v9);
  v6(v10, 0);
  sub_10005F14C(a1, a2);
}

void (*sub_100065E18(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(*(type metadata accessor for SASSetupB(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[11] = v6;
  (*((swift_isaMask & *v1) + 0x58))();
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  sub_10005F0F8(v8, v9);
  sub_10006CDDC(v7, type metadata accessor for SASSetupB);
  v4[8] = v8;
  v4[9] = v9;
  return sub_100065F30;
}

void sub_100065F30(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 64);
  v5 = *(*a1 + 72);
  v6 = *((swift_isaMask & **(*a1 + 80)) + 0x68);
  sub_10005F0F8(v4, v5);
  v7 = v3[11];
  if (a2)
  {
    sub_10005F0F8(v4, v5);
    v8 = v6(v3);
    v10 = *(v9 + 16);
    v11 = *(v9 + 24);
    *(v9 + 16) = v4;
    *(v9 + 24) = v5;
    sub_10005F14C(v10, v11);
    v8(v3, 0);
    sub_10005F14C(v4, v5);
    v12 = v3[8];
    v13 = v3[9];
  }

  else
  {
    v14 = v6(v3 + 4);
    v16 = *(v15 + 16);
    v17 = *(v15 + 24);
    *(v15 + 16) = v4;
    *(v15 + 24) = v5;
    sub_10005F14C(v16, v17);
    v14(v3 + 4, 0);
    v12 = v4;
    v13 = v5;
  }

  sub_10005F14C(v12, v13);
  free(v7);

  free(v3);
}

uint64_t sub_10006618C()
{
  v1 = type metadata accessor for SASSetupB(0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v0) + 0x58))(v2);
  v5 = *(v4 + 6);
  sub_10005F0F8(v5, *(v4 + 7));
  sub_10006CDDC(v4, type metadata accessor for SASSetupB);
  return v5;
}

void sub_100066344(uint64_t a1, unint64_t a2)
{
  v5 = *((swift_isaMask & *v2) + 0x68);
  sub_10005F0F8(a1, a2);
  v6 = v5(v10);
  v8 = *(v7 + 48);
  v9 = *(v7 + 56);
  *(v7 + 48) = a1;
  *(v7 + 56) = a2;
  sub_10005F14C(v8, v9);
  v6(v10, 0);
  sub_10005F14C(a1, a2);
}

void (*sub_1000663F4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(*(type metadata accessor for SASSetupB(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[11] = v6;
  (*((swift_isaMask & *v1) + 0x58))();
  v8 = *(v7 + 48);
  v9 = *(v7 + 56);
  sub_10005F0F8(v8, v9);
  sub_10006CDDC(v7, type metadata accessor for SASSetupB);
  v4[8] = v8;
  v4[9] = v9;
  return sub_10006650C;
}

void sub_10006650C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 64);
  v5 = *(*a1 + 72);
  v6 = *((swift_isaMask & **(*a1 + 80)) + 0x68);
  sub_10005F0F8(v4, v5);
  v7 = v3[11];
  if (a2)
  {
    sub_10005F0F8(v4, v5);
    v8 = v6(v3);
    v10 = *(v9 + 48);
    v11 = *(v9 + 56);
    *(v9 + 48) = v4;
    *(v9 + 56) = v5;
    sub_10005F14C(v10, v11);
    v8(v3, 0);
    sub_10005F14C(v4, v5);
    v12 = v3[8];
    v13 = v3[9];
  }

  else
  {
    v14 = v6(v3 + 4);
    v16 = *(v15 + 48);
    v17 = *(v15 + 56);
    *(v15 + 48) = v4;
    *(v15 + 56) = v5;
    sub_10005F14C(v16, v17);
    v14(v3 + 4, 0);
    v12 = v4;
    v13 = v5;
  }

  sub_10005F14C(v12, v13);
  free(v7);

  free(v3);
}

void *sub_10006669C(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for SASSetupB(0);
  __chkstk_darwin(v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;
  v18 = a2;
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  sub_10005F0F8(a1, a2);
  BinaryDecodingOptions.init()();
  sub_10006CE3C(&qword_1000AE400, type metadata accessor for SASSetupB, &unk_10008CC40);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v3)
  {
    sub_10005F14C(a1, a2);
    type metadata accessor for GSASSetupB(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_10006CEA4(v10, v2 + OBJC_IVAR____TtC21transparencyStaticKey10GSASSetupB_setupB, type metadata accessor for SASSetupB);
    v11 = type metadata accessor for GSASSetupB(0);
    v13.receiver = v2;
    v13.super_class = v11;
    v4 = objc_msgSendSuper2(&v13, "init");
    sub_10005F14C(a1, a2);
  }

  return v4;
}

id sub_1000668E4()
{
  v1 = type metadata accessor for SASSetupB(0);
  __chkstk_darwin(v1 - 8);
  v3 = (&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100057DE4(v3);
  sub_10006CEA4(v3, v0 + OBJC_IVAR____TtC21transparencyStaticKey10GSASSetupB_setupB, type metadata accessor for SASSetupB);
  v4 = type metadata accessor for GSASSetupB(0);
  v6.receiver = v0;
  v6.super_class = v4;
  return objc_msgSendSuper2(&v6, "init");
}

uint64_t sub_100066BF0()
{
  v1 = type metadata accessor for SASSetupB(0);
  v2 = __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v0) + 0x58))(v2);
  sub_10006CE3C(&qword_1000AE400, type metadata accessor for SASSetupB, &unk_10008CC40);
  v5 = Message.serializedData(partial:)();
  sub_10006CDDC(v4, type metadata accessor for SASSetupB);
  return v5;
}

uint64_t sub_100066F38()
{
  v1 = type metadata accessor for SASConfirm(0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v0) + 0x58))(v2);
  v5 = *v4;
  sub_10005F0F8(*v4, *(v4 + 1));
  sub_10006CDDC(v4, type metadata accessor for SASConfirm);
  return v5;
}

void sub_1000670F0(uint64_t a1, unint64_t a2)
{
  v5 = *((swift_isaMask & *v2) + 0x68);
  sub_10005F0F8(a1, a2);
  v6 = v5(v10);
  v8 = *v7;
  v9 = v7[1];
  *v7 = a1;
  v7[1] = a2;
  sub_10005F14C(v8, v9);
  v6(v10, 0);
  sub_10005F14C(a1, a2);
}

void (*sub_1000671A0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(*(type metadata accessor for SASConfirm(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[11] = v6;
  (*((swift_isaMask & *v1) + 0x58))();
  v8 = *v7;
  v9 = v7[1];
  sub_10005F0F8(*v7, v9);
  sub_10006CDDC(v7, type metadata accessor for SASConfirm);
  v4[8] = v8;
  v4[9] = v9;
  return sub_1000672B8;
}

void sub_1000672B8(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 64);
  v5 = *(*a1 + 72);
  v6 = *((swift_isaMask & **(*a1 + 80)) + 0x68);
  sub_10005F0F8(v4, v5);
  v7 = v3[11];
  if (a2)
  {
    sub_10005F0F8(v4, v5);
    v8 = v6(v3);
    v10 = *v9;
    v11 = v9[1];
    *v9 = v4;
    v9[1] = v5;
    sub_10005F14C(v10, v11);
    v8(v3, 0);
    sub_10005F14C(v4, v5);
    v12 = v3[8];
    v13 = v3[9];
  }

  else
  {
    v14 = v6(v3 + 4);
    v16 = *v15;
    v17 = v15[1];
    *v15 = v4;
    v15[1] = v5;
    sub_10005F14C(v16, v17);
    v14(v3 + 4, 0);
    v12 = v4;
    v13 = v5;
  }

  sub_10005F14C(v12, v13);
  free(v7);

  free(v3);
}

uint64_t sub_100067514()
{
  v1 = type metadata accessor for SASConfirm(0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v0) + 0x58))(v2);
  v5 = *(v4 + 3);
  sub_10005F0F8(v5, *(v4 + 4));
  sub_10006CDDC(v4, type metadata accessor for SASConfirm);
  return v5;
}

void sub_1000676CC(uint64_t a1, unint64_t a2)
{
  v5 = *((swift_isaMask & *v2) + 0x68);
  sub_10005F0F8(a1, a2);
  v6 = v5(v10);
  v8 = *(v7 + 24);
  v9 = *(v7 + 32);
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  sub_10005F14C(v8, v9);
  v6(v10, 0);
  sub_10005F14C(a1, a2);
}

void (*sub_10006777C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(*(type metadata accessor for SASConfirm(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[11] = v6;
  (*((swift_isaMask & *v1) + 0x58))();
  v8 = *(v7 + 24);
  v9 = *(v7 + 32);
  sub_10005F0F8(v8, v9);
  sub_10006CDDC(v7, type metadata accessor for SASConfirm);
  v4[8] = v8;
  v4[9] = v9;
  return sub_100067894;
}

void sub_100067894(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 64);
  v5 = *(*a1 + 72);
  v6 = *((swift_isaMask & **(*a1 + 80)) + 0x68);
  sub_10005F0F8(v4, v5);
  v7 = v3[11];
  if (a2)
  {
    sub_10005F0F8(v4, v5);
    v8 = v6(v3);
    v10 = *(v9 + 24);
    v11 = *(v9 + 32);
    *(v9 + 24) = v4;
    *(v9 + 32) = v5;
    sub_10005F14C(v10, v11);
    v8(v3, 0);
    sub_10005F14C(v4, v5);
    v12 = v3[8];
    v13 = v3[9];
  }

  else
  {
    v14 = v6(v3 + 4);
    v16 = *(v15 + 24);
    v17 = *(v15 + 32);
    *(v15 + 24) = v4;
    *(v15 + 32) = v5;
    sub_10005F14C(v16, v17);
    v14(v3 + 4, 0);
    v12 = v4;
    v13 = v5;
  }

  sub_10005F14C(v12, v13);
  free(v7);

  free(v3);
}

uint64_t sub_100067AB8()
{
  v1 = type metadata accessor for SASConfirm(0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v0) + 0x58))(v2);
  v5 = *(v4 + 2);
  sub_10006CDDC(v4, type metadata accessor for SASConfirm);
  return v5;
}

uint64_t sub_100067C14(uint64_t a1)
{
  v3 = (*((swift_isaMask & *v1) + 0x68))(v6);
  *(v4 + 16) = a1;
  return v3(v6, 0);
}

void (*sub_100067C9C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(type metadata accessor for SASConfirm(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 80) = v6;
  (*((swift_isaMask & *v1) + 0x58))();
  v8 = *(v7 + 16);
  sub_10006CDDC(v7, type metadata accessor for SASConfirm);
  *(v4 + 64) = v8;
  return sub_100067DA0;
}

void sub_100067DA0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v4 = 4;
  if (a2)
  {
    v4 = 0;
  }

  v5 = &v2[v4];
  v6 = v2[10];
  v7 = (*((swift_isaMask & **(*a1 + 72)) + 0x68))(&v2[v4]);
  *(v8 + 16) = v3;
  v7(v5, 0);
  free(v6);

  free(v2);
}

void *sub_100067EA4(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for SASConfirm(0);
  __chkstk_darwin(v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;
  v18 = a2;
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  sub_10005F0F8(a1, a2);
  BinaryDecodingOptions.init()();
  sub_10006CE3C(&qword_1000AE430, type metadata accessor for SASConfirm, &unk_10008CF10);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v3)
  {
    sub_10005F14C(a1, a2);
    type metadata accessor for GSASConfirm(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_10006CEA4(v10, v2 + OBJC_IVAR____TtC21transparencyStaticKey11GSASConfirm_confirm, type metadata accessor for SASConfirm);
    v11 = type metadata accessor for GSASConfirm(0);
    v13.receiver = v2;
    v13.super_class = v11;
    v4 = objc_msgSendSuper2(&v13, "init");
    sub_10005F14C(a1, a2);
  }

  return v4;
}

id sub_1000680EC()
{
  v1 = type metadata accessor for SASConfirm(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100058068(v3);
  sub_10006CEA4(v3, v0 + OBJC_IVAR____TtC21transparencyStaticKey11GSASConfirm_confirm, type metadata accessor for SASConfirm);
  v4 = type metadata accessor for GSASConfirm(0);
  v6.receiver = v0;
  v6.super_class = v4;
  return objc_msgSendSuper2(&v6, "init");
}

uint64_t sub_1000683F8()
{
  v1 = type metadata accessor for SASConfirm(0);
  v2 = __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v0) + 0x58))(v2);
  sub_10006CE3C(&qword_1000AE430, type metadata accessor for SASConfirm, &unk_10008CF10);
  v5 = Message.serializedData(partial:)();
  sub_10006CDDC(v4, type metadata accessor for SASConfirm);
  return v5;
}

uint64_t sub_100068744()
{
  v1 = type metadata accessor for SASCommit(0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v0) + 0x58))(v2);
  v5 = *v4;
  sub_10005F0F8(*v4, *(v4 + 1));
  sub_10006CDDC(v4, type metadata accessor for SASCommit);
  return v5;
}

void sub_1000688FC(uint64_t a1, unint64_t a2)
{
  v5 = *((swift_isaMask & *v2) + 0x68);
  sub_10005F0F8(a1, a2);
  v6 = v5(v10);
  v8 = *v7;
  v9 = v7[1];
  *v7 = a1;
  v7[1] = a2;
  sub_10005F14C(v8, v9);
  v6(v10, 0);
  sub_10005F14C(a1, a2);
}

void (*sub_1000689AC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(*(type metadata accessor for SASCommit(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[11] = v6;
  (*((swift_isaMask & *v1) + 0x58))();
  v8 = *v7;
  v9 = v7[1];
  sub_10005F0F8(*v7, v9);
  sub_10006CDDC(v7, type metadata accessor for SASCommit);
  v4[8] = v8;
  v4[9] = v9;
  return sub_100068AC4;
}

void sub_100068AC4(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 64);
  v5 = *(*a1 + 72);
  v6 = *((swift_isaMask & **(*a1 + 80)) + 0x68);
  sub_10005F0F8(v4, v5);
  v7 = v3[11];
  if (a2)
  {
    sub_10005F0F8(v4, v5);
    v8 = v6(v3);
    v10 = *v9;
    v11 = v9[1];
    *v9 = v4;
    v9[1] = v5;
    sub_10005F14C(v10, v11);
    v8(v3, 0);
    sub_10005F14C(v4, v5);
    v12 = v3[8];
    v13 = v3[9];
  }

  else
  {
    v14 = v6(v3 + 4);
    v16 = *v15;
    v17 = v15[1];
    *v15 = v4;
    v15[1] = v5;
    sub_10005F14C(v16, v17);
    v14(v3 + 4, 0);
    v12 = v4;
    v13 = v5;
  }

  sub_10005F14C(v12, v13);
  free(v7);

  free(v3);
}

uint64_t sub_100068D20()
{
  v1 = type metadata accessor for SASCommit(0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v0) + 0x58))(v2);
  v5 = *(v4 + 2);
  sub_10005F0F8(v5, *(v4 + 3));
  sub_10006CDDC(v4, type metadata accessor for SASCommit);
  return v5;
}

void sub_100068ED8(uint64_t a1, unint64_t a2)
{
  v5 = *((swift_isaMask & *v2) + 0x68);
  sub_10005F0F8(a1, a2);
  v6 = v5(v10);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  sub_10005F14C(v8, v9);
  v6(v10, 0);
  sub_10005F14C(a1, a2);
}

void (*sub_100068F88(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(*(type metadata accessor for SASCommit(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[11] = v6;
  (*((swift_isaMask & *v1) + 0x58))();
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  sub_10005F0F8(v8, v9);
  sub_10006CDDC(v7, type metadata accessor for SASCommit);
  v4[8] = v8;
  v4[9] = v9;
  return sub_1000690A0;
}

void sub_1000690A0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 64);
  v5 = *(*a1 + 72);
  v6 = *((swift_isaMask & **(*a1 + 80)) + 0x68);
  sub_10005F0F8(v4, v5);
  v7 = v3[11];
  if (a2)
  {
    sub_10005F0F8(v4, v5);
    v8 = v6(v3);
    v10 = *(v9 + 16);
    v11 = *(v9 + 24);
    *(v9 + 16) = v4;
    *(v9 + 24) = v5;
    sub_10005F14C(v10, v11);
    v8(v3, 0);
    sub_10005F14C(v4, v5);
    v12 = v3[8];
    v13 = v3[9];
  }

  else
  {
    v14 = v6(v3 + 4);
    v16 = *(v15 + 16);
    v17 = *(v15 + 24);
    *(v15 + 16) = v4;
    *(v15 + 24) = v5;
    sub_10005F14C(v16, v17);
    v14(v3 + 4, 0);
    v12 = v4;
    v13 = v5;
  }

  sub_10005F14C(v12, v13);
  free(v7);

  free(v3);
}

uint64_t sub_1000692FC()
{
  v1 = type metadata accessor for SASCommit(0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v0) + 0x58))(v2);
  v5 = *(v4 + 4);
  sub_10005F0F8(v5, *(v4 + 5));
  sub_10006CDDC(v4, type metadata accessor for SASCommit);
  return v5;
}

void sub_1000694B4(uint64_t a1, unint64_t a2)
{
  v5 = *((swift_isaMask & *v2) + 0x68);
  sub_10005F0F8(a1, a2);
  v6 = v5(v10);
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  sub_10005F14C(v8, v9);
  v6(v10, 0);
  sub_10005F14C(a1, a2);
}

void (*sub_100069564(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(*(type metadata accessor for SASCommit(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[11] = v6;
  (*((swift_isaMask & *v1) + 0x58))();
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  sub_10005F0F8(v8, v9);
  sub_10006CDDC(v7, type metadata accessor for SASCommit);
  v4[8] = v8;
  v4[9] = v9;
  return sub_10006967C;
}

void sub_10006967C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 64);
  v5 = *(*a1 + 72);
  v6 = *((swift_isaMask & **(*a1 + 80)) + 0x68);
  sub_10005F0F8(v4, v5);
  v7 = v3[11];
  if (a2)
  {
    sub_10005F0F8(v4, v5);
    v8 = v6(v3);
    v10 = *(v9 + 32);
    v11 = *(v9 + 40);
    *(v9 + 32) = v4;
    *(v9 + 40) = v5;
    sub_10005F14C(v10, v11);
    v8(v3, 0);
    sub_10005F14C(v4, v5);
    v12 = v3[8];
    v13 = v3[9];
  }

  else
  {
    v14 = v6(v3 + 4);
    v16 = *(v15 + 32);
    v17 = *(v15 + 40);
    *(v15 + 32) = v4;
    *(v15 + 40) = v5;
    sub_10005F14C(v16, v17);
    v14(v3 + 4, 0);
    v12 = v4;
    v13 = v5;
  }

  sub_10005F14C(v12, v13);
  free(v7);

  free(v3);
}

void *sub_10006980C(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for SASCommit(0);
  __chkstk_darwin(v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;
  v18 = a2;
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  sub_10005F0F8(a1, a2);
  BinaryDecodingOptions.init()();
  sub_10006CE3C(&qword_1000AE3B8, type metadata accessor for SASCommit, &unk_10008C808);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v3)
  {
    sub_10005F14C(a1, a2);
    type metadata accessor for GSASCommit(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_10006CEA4(v10, v2 + OBJC_IVAR____TtC21transparencyStaticKey10GSASCommit_commit, type metadata accessor for SASCommit);
    v11 = type metadata accessor for GSASCommit(0);
    v13.receiver = v2;
    v13.super_class = v11;
    v4 = objc_msgSendSuper2(&v13, "init");
    sub_10005F14C(a1, a2);
  }

  return v4;
}

id sub_100069A54()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_100069A88()
{
  v1 = type metadata accessor for SASCommit(0);
  __chkstk_darwin(v1 - 8);
  v3 = (&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000579A0(v3);
  sub_10006CEA4(v3, v0 + OBJC_IVAR____TtC21transparencyStaticKey10GSASCommit_commit, type metadata accessor for SASCommit);
  v4 = type metadata accessor for GSASCommit(0);
  v6.receiver = v0;
  v6.super_class = v4;
  return objc_msgSendSuper2(&v6, "init");
}

uint64_t sub_100069D94()
{
  v1 = type metadata accessor for SASCommit(0);
  v2 = __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v0) + 0x58))(v2);
  sub_10006CE3C(&qword_1000AE3B8, type metadata accessor for SASCommit, &unk_10008C808);
  v5 = Message.serializedData(partial:)();
  sub_10006CDDC(v4, type metadata accessor for SASCommit);
  return v5;
}

uint64_t sub_10006A0DC()
{
  v1 = type metadata accessor for SASReveal(0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v0) + 0x58))(v2);
  v5 = *v4;
  sub_10005F0F8(*v4, *(v4 + 1));
  sub_10006CDDC(v4, type metadata accessor for SASReveal);
  return v5;
}

void sub_10006A294(uint64_t a1, unint64_t a2)
{
  v5 = *((swift_isaMask & *v2) + 0x68);
  sub_10005F0F8(a1, a2);
  v6 = v5(v10);
  v8 = *v7;
  v9 = v7[1];
  *v7 = a1;
  v7[1] = a2;
  sub_10005F14C(v8, v9);
  v6(v10, 0);
  sub_10005F14C(a1, a2);
}

void (*sub_10006A344(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(*(type metadata accessor for SASReveal(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[11] = v6;
  (*((swift_isaMask & *v1) + 0x58))();
  v8 = *v7;
  v9 = v7[1];
  sub_10005F0F8(*v7, v9);
  sub_10006CDDC(v7, type metadata accessor for SASReveal);
  v4[8] = v8;
  v4[9] = v9;
  return sub_10006A45C;
}

void sub_10006A45C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 64);
  v5 = *(*a1 + 72);
  v6 = *((swift_isaMask & **(*a1 + 80)) + 0x68);
  sub_10005F0F8(v4, v5);
  v7 = v3[11];
  if (a2)
  {
    sub_10005F0F8(v4, v5);
    v8 = v6(v3);
    v10 = *v9;
    v11 = v9[1];
    *v9 = v4;
    v9[1] = v5;
    sub_10005F14C(v10, v11);
    v8(v3, 0);
    sub_10005F14C(v4, v5);
    v12 = v3[8];
    v13 = v3[9];
  }

  else
  {
    v14 = v6(v3 + 4);
    v16 = *v15;
    v17 = v15[1];
    *v15 = v4;
    v15[1] = v5;
    sub_10005F14C(v16, v17);
    v14(v3 + 4, 0);
    v12 = v4;
    v13 = v5;
  }

  sub_10005F14C(v12, v13);
  free(v7);

  free(v3);
}

uint64_t sub_10006A6B8()
{
  v1 = type metadata accessor for SASReveal(0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v0) + 0x58))(v2);
  v5 = *(v4 + 2);
  sub_10005F0F8(v5, *(v4 + 3));
  sub_10006CDDC(v4, type metadata accessor for SASReveal);
  return v5;
}

void sub_10006A870(uint64_t a1, unint64_t a2)
{
  v5 = *((swift_isaMask & *v2) + 0x68);
  sub_10005F0F8(a1, a2);
  v6 = v5(v10);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  sub_10005F14C(v8, v9);
  v6(v10, 0);
  sub_10005F14C(a1, a2);
}

void (*sub_10006A920(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(*(type metadata accessor for SASReveal(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[11] = v6;
  (*((swift_isaMask & *v1) + 0x58))();
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  sub_10005F0F8(v8, v9);
  sub_10006CDDC(v7, type metadata accessor for SASReveal);
  v4[8] = v8;
  v4[9] = v9;
  return sub_10006AA38;
}

void sub_10006AA38(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 64);
  v5 = *(*a1 + 72);
  v6 = *((swift_isaMask & **(*a1 + 80)) + 0x68);
  sub_10005F0F8(v4, v5);
  v7 = v3[11];
  if (a2)
  {
    sub_10005F0F8(v4, v5);
    v8 = v6(v3);
    v10 = *(v9 + 16);
    v11 = *(v9 + 24);
    *(v9 + 16) = v4;
    *(v9 + 24) = v5;
    sub_10005F14C(v10, v11);
    v8(v3, 0);
    sub_10005F14C(v4, v5);
    v12 = v3[8];
    v13 = v3[9];
  }

  else
  {
    v14 = v6(v3 + 4);
    v16 = *(v15 + 16);
    v17 = *(v15 + 24);
    *(v15 + 16) = v4;
    *(v15 + 24) = v5;
    sub_10005F14C(v16, v17);
    v14(v3 + 4, 0);
    v12 = v4;
    v13 = v5;
  }

  sub_10005F14C(v12, v13);
  free(v7);

  free(v3);
}

uint64_t sub_10006AC94()
{
  v1 = type metadata accessor for SASReveal(0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v0) + 0x58))(v2);
  v5 = *(v4 + 4);
  sub_10005F0F8(v5, *(v4 + 5));
  sub_10006CDDC(v4, type metadata accessor for SASReveal);
  return v5;
}

void sub_10006AE4C(uint64_t a1, unint64_t a2)
{
  v5 = *((swift_isaMask & *v2) + 0x68);
  sub_10005F0F8(a1, a2);
  v6 = v5(v10);
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  sub_10005F14C(v8, v9);
  v6(v10, 0);
  sub_10005F14C(a1, a2);
}

void (*sub_10006AEFC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(*(type metadata accessor for SASReveal(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[11] = v6;
  (*((swift_isaMask & *v1) + 0x58))();
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  sub_10005F0F8(v8, v9);
  sub_10006CDDC(v7, type metadata accessor for SASReveal);
  v4[8] = v8;
  v4[9] = v9;
  return sub_10006B014;
}

void sub_10006B014(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 64);
  v5 = *(*a1 + 72);
  v6 = *((swift_isaMask & **(*a1 + 80)) + 0x68);
  sub_10005F0F8(v4, v5);
  v7 = v3[11];
  if (a2)
  {
    sub_10005F0F8(v4, v5);
    v8 = v6(v3);
    v10 = *(v9 + 32);
    v11 = *(v9 + 40);
    *(v9 + 32) = v4;
    *(v9 + 40) = v5;
    sub_10005F14C(v10, v11);
    v8(v3, 0);
    sub_10005F14C(v4, v5);
    v12 = v3[8];
    v13 = v3[9];
  }

  else
  {
    v14 = v6(v3 + 4);
    v16 = *(v15 + 32);
    v17 = *(v15 + 40);
    *(v15 + 32) = v4;
    *(v15 + 40) = v5;
    sub_10005F14C(v16, v17);
    v14(v3 + 4, 0);
    v12 = v4;
    v13 = v5;
  }

  sub_10005F14C(v12, v13);
  free(v7);

  free(v3);
}

void *sub_10006B1A4(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for SASReveal(0);
  __chkstk_darwin(v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;
  v18 = a2;
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  sub_10005F0F8(a1, a2);
  BinaryDecodingOptions.init()();
  sub_10006CE3C(&qword_1000AE418, type metadata accessor for SASReveal, &unk_10008CDA8);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v3)
  {
    sub_10005F14C(a1, a2);
    type metadata accessor for GSASReveal(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_10006CEA4(v10, v2 + OBJC_IVAR____TtC21transparencyStaticKey10GSASReveal_reveal, type metadata accessor for SASReveal);
    v11 = type metadata accessor for GSASReveal(0);
    v13.receiver = v2;
    v13.super_class = v11;
    v4 = objc_msgSendSuper2(&v13, "init");
    sub_10005F14C(a1, a2);
  }

  return v4;
}

id sub_10006B3EC()
{
  v1 = type metadata accessor for SASReveal(0);
  __chkstk_darwin(v1 - 8);
  v3 = (&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100057EA0(v3);
  sub_10006CEA4(v3, v0 + OBJC_IVAR____TtC21transparencyStaticKey10GSASReveal_reveal, type metadata accessor for SASReveal);
  v4 = type metadata accessor for GSASReveal(0);
  v6.receiver = v0;
  v6.super_class = v4;
  return objc_msgSendSuper2(&v6, "init");
}

uint64_t sub_10006B6F8()
{
  v1 = type metadata accessor for SASReveal(0);
  v2 = __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v0) + 0x58))(v2);
  sub_10006CE3C(&qword_1000AE418, type metadata accessor for SASReveal, &unk_10008CDA8);
  v5 = Message.serializedData(partial:)();
  sub_10006CDDC(v4, type metadata accessor for SASReveal);
  return v5;
}

uint64_t sub_10006BA40()
{
  v1 = type metadata accessor for SASTeardown(0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v0) + 0x58))(v2);
  v5 = *v4;
  sub_10005F0F8(*v4, *(v4 + 1));
  sub_10006CDDC(v4, type metadata accessor for SASTeardown);
  return v5;
}

void sub_10006BBF8(uint64_t a1, unint64_t a2)
{
  v5 = *((swift_isaMask & *v2) + 0x68);
  sub_10005F0F8(a1, a2);
  v6 = v5(v10);
  v8 = *v7;
  v9 = v7[1];
  *v7 = a1;
  v7[1] = a2;
  sub_10005F14C(v8, v9);
  v6(v10, 0);
  sub_10005F14C(a1, a2);
}

void (*sub_10006BCA8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(*(type metadata accessor for SASTeardown(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[11] = v6;
  (*((swift_isaMask & *v1) + 0x58))();
  v8 = *v7;
  v9 = v7[1];
  sub_10005F0F8(*v7, v9);
  sub_10006CDDC(v7, type metadata accessor for SASTeardown);
  v4[8] = v8;
  v4[9] = v9;
  return sub_10006BDC0;
}

void sub_10006BDC0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 64);
  v5 = *(*a1 + 72);
  v6 = *((swift_isaMask & **(*a1 + 80)) + 0x68);
  sub_10005F0F8(v4, v5);
  v7 = v3[11];
  if (a2)
  {
    sub_10005F0F8(v4, v5);
    v8 = v6(v3);
    v10 = *v9;
    v11 = v9[1];
    *v9 = v4;
    v9[1] = v5;
    sub_10005F14C(v10, v11);
    v8(v3, 0);
    sub_10005F14C(v4, v5);
    v12 = v3[8];
    v13 = v3[9];
  }

  else
  {
    v14 = v6(v3 + 4);
    v16 = *v15;
    v17 = v15[1];
    *v15 = v4;
    v15[1] = v5;
    sub_10005F14C(v16, v17);
    v14(v3 + 4, 0);
    v12 = v4;
    v13 = v5;
  }

  sub_10005F14C(v12, v13);
  free(v7);

  free(v3);
}

uint64_t sub_10006BFF4()
{
  v1 = type metadata accessor for SASTeardown(0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v0) + 0x58))(v2);
  v5 = *(v4 + 2);
  v6 = v4[24];
  sub_10006CDDC(v4, type metadata accessor for SASTeardown);
  sub_100057054(v5, v6);
  return 0;
}

uint64_t sub_10006C17C()
{
  sub_100057040();
  if ((v2 & 0x100) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = v1;
  }

  v4 = v2 | ((v2 & 0x100) >> 8);
  v5 = (*((swift_isaMask & *v0) + 0x68))(v8);
  *(v6 + 16) = v3;
  *(v6 + 24) = v4 & 1;
  return v5(v8, 0);
}

void (*sub_10006C218(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(type metadata accessor for SASTeardown(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 80) = v6;
  (*((swift_isaMask & *v1) + 0x58))();
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  sub_10006CDDC(v7, type metadata accessor for SASTeardown);
  sub_100057054(v8, v9);
  *(v4 + 64) = 0;
  return sub_10006C334;
}

void sub_10006C334(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 72);
  sub_100057040();
  if ((v6 & 0x100) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v6 | ((v6 & 0x100) >> 8);
  v9 = 4;
  if (a2)
  {
    v9 = 0;
  }

  v10 = &v3[v9];
  v11 = v3[10];
  v12 = (*((swift_isaMask & *v4) + 0x68))(&v3[v9]);
  *(v13 + 16) = v7;
  *(v13 + 24) = v8 & 1;
  v12(v10, 0);
  free(v11);

  free(v3);
}

void *sub_10006C454(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for SASTeardown(0);
  __chkstk_darwin(v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;
  v18 = a2;
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  sub_10005F0F8(a1, a2);
  BinaryDecodingOptions.init()();
  sub_10006CE3C(&qword_1000AE3E8, type metadata accessor for SASTeardown, &unk_10008CAD8);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v3)
  {
    sub_10005F14C(a1, a2);
    type metadata accessor for GSASTeardown(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_10006CEA4(v10, v2 + OBJC_IVAR____TtC21transparencyStaticKey12GSASTeardown_teardown, type metadata accessor for SASTeardown);
    v11 = type metadata accessor for GSASTeardown(0);
    v13.receiver = v2;
    v13.super_class = v11;
    v4 = objc_msgSendSuper2(&v13, "init");
    sub_10005F14C(a1, a2);
  }

  return v4;
}

id sub_10006C69C()
{
  v1 = type metadata accessor for SASTeardown(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100057BCC(v3);
  sub_10006CEA4(v3, v0 + OBJC_IVAR____TtC21transparencyStaticKey12GSASTeardown_teardown, type metadata accessor for SASTeardown);
  v4 = type metadata accessor for GSASTeardown(0);
  v6.receiver = v0;
  v6.super_class = v4;
  return objc_msgSendSuper2(&v6, "init");
}

uint64_t sub_10006C9A8()
{
  v1 = type metadata accessor for SASTeardown(0);
  v2 = __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v0) + 0x58))(v2);
  sub_10006CE3C(&qword_1000AE3E8, type metadata accessor for SASTeardown, &unk_10008CAD8);
  v5 = Message.serializedData(partial:)();
  sub_10006CDDC(v4, type metadata accessor for SASTeardown);
  return v5;
}

char *sub_10006CB38(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005F2A0(&qword_1000AEB90, qword_10008D788);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

unint64_t sub_10006CC3C(unint64_t result)
{
  if (result > 7)
  {
    return 0;
  }

  return result;
}

uint64_t sub_10006CD0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10006CD74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_10006CDDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10006CE3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10006CEA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10006CF10()
{
  result = qword_1000AEA68;
  if (!qword_1000AEA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEA68);
  }

  return result;
}

unint64_t sub_10006CF68()
{
  result = qword_1000AEA70;
  if (!qword_1000AEA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEA70);
  }

  return result;
}

uint64_t sub_10006D0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_10006D278()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10006D2F0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10006D328(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for SASTTR(0);
  __chkstk_darwin(v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1;
  v14 = a2;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_10005F0F8(a1, a2);
  BinaryDecodingOptions.init()();
  sub_10006D4B8();
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (!v2)
  {
    v3 = Message.serializedData(partial:)();
    sub_10006D510(v9);
  }

  return v3;
}

unint64_t sub_10006D4B8()
{
  result = qword_1000AE468;
  if (!qword_1000AE468)
  {
    type metadata accessor for SASTTR(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE468);
  }

  return result;
}

uint64_t sub_10006D510(uint64_t a1)
{
  v2 = type metadata accessor for SASTTR(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10006D79C()
{
  v0 = [0 kt_hexString];
  sub_10000A10C();
  sub_10000A144(&_mh_execute_header, v1, v2, "find: no sessionID: [%{public}@]", v3, v4, v5, v6);
}

void sub_10006D828()
{
  sub_10000A10C();
  sub_10000A100();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10006D898(id *a1)
{
  v1 = [*a1 kt_hexString];
  sub_10000A10C();
  sub_10000A144(&_mh_execute_header, v2, v3, "delete: no sessionID: [%{public}@]", v4, v5, v6, v7);
}

void sub_10006D998(unsigned __int16 a1, uint64_t a2, os_log_t log)
{
  v3[0] = 67109634;
  v3[1] = a1;
  v4 = 2160;
  v5 = 1752392040;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%d can't convert peerHandle %{mask.hash}@", v3, 0x1Cu);
}

void sub_10006DAC4()
{
  sub_10000A138();
  sub_10000A100();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006DB00(void *a1, void *a2, NSObject *a3)
{
  v5 = [a1 sessionId];
  v6 = [v5 kt_hexString];
  v7 = [a2 localSessionID];
  v8 = [v7 kt_hexString];
  v9 = [a2 peerSessionID];
  v10 = [v9 kt_hexString];
  v11 = 138412802;
  v12 = v6;
  v13 = 2112;
  v14 = v8;
  v15 = 2112;
  v16 = v10;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "ktTeardown: session didn't match: %@ vs (%@/%@)", &v11, 0x20u);
}

void sub_10006DC20()
{
  sub_10000A118();
  sub_10000A100();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10006DC90()
{
  sub_10000A118();
  sub_10000A100();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10006DD00()
{
  sub_10000A138();
  sub_10000A100();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006DD3C()
{
  sub_10000A138();
  sub_10000A100();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006DD78()
{
  sub_10000A10C();
  sub_10000A100();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10006DDE8()
{
  sub_10000A10C();
  sub_10000A100();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10006DE58()
{
  sub_10000A10C();
  sub_10000A100();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10006DEC8()
{
  sub_10000A10C();
  sub_10000A100();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10006DF38()
{
  sub_10000A10C();
  sub_10000A100();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10006DFA8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 40);
  v4 = 138412546;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "haveContact: %@: failed trigger ttr %{public}@", &v4, 0x16u);
}

void sub_10006E034()
{
  sub_10000A10C();
  sub_10000A100();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10006E2D4()
{
  sub_10000A10C();
  sub_10000A100();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10006E36C(void *a1)
{
  v2 = [a1 negotiatedSessionID];
  v3 = [v2 kt_hexString];
  v4 = [a1 peerSessionID];
  v5 = [v4 kt_hexString];
  sub_10002A614();
  sub_10002A62C(&_mh_execute_header, v6, v7, "confirming session neg: %{public}@ (local id %{public}@)", v8, v9, v10, v11);
}

void sub_10006E46C()
{
  sub_10000A10C();
  sub_10000A100();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10006E510(void *a1, void *a2)
{
  v3 = [a1 peerSessionID];
  v4 = [v3 kt_hexString];
  v5 = [a2 sessionId];
  v6 = [v5 kt_hexString];
  sub_10002A614();
  sub_10002A62C(&_mh_execute_header, v7, v8, "announceMismatch peerSessionId mismatch: %{public}@ vs peer idea %{public}@", v9, v10, v11, v12);
}

void sub_10006E5DC(void *a1, void *a2)
{
  v3 = [a1 localSessionID];
  v4 = [v3 kt_hexString];
  v5 = [a2 peerSessionId];
  v6 = [v5 kt_hexString];
  sub_10002A614();
  sub_10002A62C(&_mh_execute_header, v7, v8, "announceMismatch sessionId mismatch: %{public}@ vs peer idea of self %{public}@", v9, v10, v11, v12);
}

void sub_10006E6A8()
{
  sub_10000A10C();
  sub_10000A100();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10006E850()
{
  sub_10000A10C();
  sub_10000A100();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

objc_method_description protocol_getMethodDescription(Protocol *p, SEL aSel, BOOL isRequiredMethod, BOOL isInstanceMethod)
{
  MethodDescription = _protocol_getMethodDescription(p, aSel, isRequiredMethod, isInstanceMethod);
  types = MethodDescription.types;
  name = MethodDescription.name;
  result.types = types;
  result.name = name;
  return result;
}