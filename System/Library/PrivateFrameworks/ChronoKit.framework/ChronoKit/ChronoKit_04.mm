uint64_t sub_1BF3EF558(_BYTE *a1, _BYTE *a2)
{
  if (!*a1)
  {
    return 1;
  }

  if (*a1 == 1)
  {
    if (*a2)
    {
      return 1;
    }
  }

  else if (*a2 > 1u)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1BF3EF588(_BYTE *a1, _BYTE *a2)
{
  if (!*a2)
  {
    return 0;
  }

  if (*a2 == 1)
  {
    if (*a1)
    {
      return 0;
    }
  }

  else if (*a1 > 1u)
  {
    return 0;
  }

  return 1;
}

uint64_t PushSubscription.SubscriptionType.Control.id.getter()
{
  v1 = *v0;

  return v1;
}

double PushSubscription.SubscriptionType.Control.pushType.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;

  return result;
}

uint64_t PushSubscription.SubscriptionType.Control.init(controlIdentity:pushType:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = [a1 extensionIdentity];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v8 = sub_1BF4E76B4();
  v10 = v9;
  swift_endAccess();

  v16 = v8;
  v17 = v10;
  MEMORY[0x1BFB58C90](14906, 0xE200000000000000);
  v11 = [a1 kind];
  v12 = sub_1BF4E8914();
  v14 = v13;

  MEMORY[0x1BFB58C90](v12, v14);

  *a3 = v16;
  a3[1] = v17;
  a3[2] = a1;
  a3[3] = v5;
  a3[4] = v6;
  return result;
}

unint64_t PushSubscription.SubscriptionType.Control.description.getter()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  sub_1BF4E92E4();

  v4 = [v2 description];
  v5 = sub_1BF4E8914();
  v7 = v6;

  MEMORY[0x1BFB58C90](v5, v7);

  MEMORY[0x1BFB58C90](0x795468737570203BLL, 0xEC000000203A6570);
  MEMORY[0x1BFB58C90](v1, v3);
  MEMORY[0x1BFB58C90](0x203A6E656B6F74, 0xE700000000000000);

  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  return 0xD000000000000011;
}

uint64_t PushSubscription.SubscriptionType.Control.hash(into:)(uint64_t a1)
{
  sub_1BF4E89F4();
  sub_1BF4E90B4();
  MEMORY[0x1BFB59A70](0);

  return sub_1BF4E89F4();
}

uint64_t PushSubscription.SubscriptionType.Control.hashValue.getter(double a1)
{
  sub_1BF4E9804();
  sub_1BF4E89F4();
  sub_1BF4E90B4();
  MEMORY[0x1BFB59A70](0);
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF3EF94C(double a1)
{
  sub_1BF4E9804();
  sub_1BF4E89F4();
  sub_1BF4E90B4();
  MEMORY[0x1BFB59A70](0);
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF3EF9D8(uint64_t a1)
{
  sub_1BF4E89F4();
  sub_1BF4E90B4();
  MEMORY[0x1BFB59A70](0);

  return sub_1BF4E89F4();
}

uint64_t sub_1BF3EFA4C(uint64_t a1, double a2)
{
  sub_1BF4E9804();
  sub_1BF4E89F4();
  sub_1BF4E90B4();
  MEMORY[0x1BFB59A70](0);
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF3EFB2C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1BF4E9734();
  }
}

uint64_t PushSubscription.SubscriptionType.Widget.PushType.hash(into:)(uint64_t a1)
{
  MEMORY[0x1BFB59A70](0);

  return sub_1BF4E89F4();
}

uint64_t sub_1BF3EFBB4(double a1)
{
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](0);
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF3EFC14(uint64_t a1, double a2)
{
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](0);
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t PushSubscription.SubscriptionType.Widget.id.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v0 = sub_1BF4E76B4();
  swift_endAccess();
  return v0;
}

double PushSubscription.SubscriptionType.Widget.pushType.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;

  return result;
}

uint64_t PushSubscription.SubscriptionType.Widget.init(extensionIdentity:pushType:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  v4 = a2[1];
  *a3 = result;
  a3[1] = v3;
  a3[2] = v4;
  return result;
}

unint64_t PushSubscription.SubscriptionType.Widget.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1BF4E92E4();

  v4 = [v2 description];
  v5 = sub_1BF4E8914();
  v7 = v6;

  MEMORY[0x1BFB58C90](v5, v7);

  MEMORY[0x1BFB58C90](0x795468737570203BLL, 0xEC000000203A6570);
  MEMORY[0x1BFB58C90](v1, v3);
  MEMORY[0x1BFB58C90](0x203A6E656B6F74, 0xE700000000000000);

  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  return 0xD000000000000013;
}

BOOL static PushSubscription.SubscriptionType.Widget.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  sub_1BF3F1508();
  result = 0;
  if (sub_1BF4E90A4())
  {
    v6 = v2 == v4 && v3 == v5;
    if (v6 || (sub_1BF4E9734() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t PushSubscription.SubscriptionType.Widget.hash(into:)(uint64_t a1)
{
  sub_1BF4E90B4();
  MEMORY[0x1BFB59A70](0);

  return sub_1BF4E89F4();
}

uint64_t PushSubscription.SubscriptionType.Widget.hashValue.getter(double a1)
{
  sub_1BF4E9804();
  sub_1BF4E90B4();
  MEMORY[0x1BFB59A70](0);
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF3EFFA0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  sub_1BF3F1508();
  if ((sub_1BF4E90A4() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_1BF4E9734();
}

uint64_t sub_1BF3F004C(double a1)
{
  sub_1BF4E9804();
  sub_1BF4E90B4();
  MEMORY[0x1BFB59A70](0);
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF3F00BC(uint64_t a1)
{
  sub_1BF4E90B4();
  MEMORY[0x1BFB59A70](0);

  return sub_1BF4E89F4();
}

uint64_t sub_1BF3F011C(uint64_t a1, double a2)
{
  sub_1BF4E9804();
  sub_1BF4E90B4();
  MEMORY[0x1BFB59A70](0);
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t PushSubscription.SubscriptionType.description.getter()
{
  if (*(v0 + 40))
  {
    v3 = 0x203A746567646977;
    v1 = PushSubscription.SubscriptionType.Widget.description.getter();
  }

  else
  {
    v3 = 0x3A6C6F72746E6F63;
    v1 = PushSubscription.SubscriptionType.Control.description.getter();
  }

  MEMORY[0x1BFB58C90](v1);

  return v3;
}

uint64_t PushSubscription.SubscriptionType.hash(into:)(uint64_t a1)
{
  if (*(v1 + 40))
  {
    MEMORY[0x1BFB59A70](1);
  }

  else
  {
    MEMORY[0x1BFB59A70](0);
    sub_1BF4E89F4();
  }

  sub_1BF4E90B4();
  MEMORY[0x1BFB59A70](0);

  return sub_1BF4E89F4();
}

uint64_t PushSubscription.SubscriptionType.hashValue.getter(double a1)
{
  v2 = *(v1 + 40);
  sub_1BF4E9804();
  if (v2)
  {
    MEMORY[0x1BFB59A70](1);
  }

  else
  {
    MEMORY[0x1BFB59A70](0);
    sub_1BF4E89F4();
  }

  sub_1BF4E90B4();
  MEMORY[0x1BFB59A70](0);
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF3F03EC(double a1)
{
  v2 = *(v1 + 40);
  sub_1BF4E9804();
  if (v2)
  {
    MEMORY[0x1BFB59A70](1);
  }

  else
  {
    MEMORY[0x1BFB59A70](0);
    sub_1BF4E89F4();
  }

  sub_1BF4E90B4();
  MEMORY[0x1BFB59A70](0);
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF3F04C0(uint64_t a1)
{
  if (*(v1 + 40))
  {
    MEMORY[0x1BFB59A70](1);
  }

  else
  {
    MEMORY[0x1BFB59A70](0);
    sub_1BF4E89F4();
  }

  sub_1BF4E90B4();
  MEMORY[0x1BFB59A70](0);

  return sub_1BF4E89F4();
}

uint64_t sub_1BF3F0590(uint64_t a1, double a2)
{
  v3 = *(v2 + 40);
  sub_1BF4E9804();
  if (v3)
  {
    MEMORY[0x1BFB59A70](1);
  }

  else
  {
    MEMORY[0x1BFB59A70](0);
    sub_1BF4E89F4();
  }

  sub_1BF4E90B4();
  MEMORY[0x1BFB59A70](0);
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

char *PushSubscription.id.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  if (*(v0 + 64))
  {
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    v5 = *(v0 + 40);
    swift_beginAccess();
    v6 = v1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
    v7 = sub_1BF4E76B4();
    swift_endAccess();
    sub_1BF3F1B98(v1, v2, v5, v4, v3, 1);
    return v7;
  }

  else
  {
  }

  return v1;
}

double PushSubscription.topic.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;

  return result;
}

uint64_t PushSubscription.topic.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);

  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

double PushSubscription.subscriptionType.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  return sub_1BF3F1BEC(v2, v3, v4, v5, v6, v7);
}

__n128 PushSubscription.subscriptionType.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_1BF3F1B98(*(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64));
  result = *a1;
  *(v1 + 40) = *(a1 + 16);
  *(v1 + 24) = result;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  return result;
}

uint64_t PushSubscription.budget.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PushSubscription(0) + 24);

  return sub_1BF3F1C8C(v3, a1);
}

uint64_t PushSubscription.budget.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PushSubscription(0) + 24);

  return sub_1BF3F1CF0(a1, v3);
}

uint64_t PushSubscription.description.getter()
{
  v1 = type metadata accessor for Budget(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14[0] = 0;
  *(&v14[0] + 1) = 0xE000000000000000;
  sub_1BF4E92E4();

  v17 = 0x203A6369706F74;
  v18 = 0xE700000000000000;
  v4 = *(v0 + 8);
  if (*(v0 + 16))
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0xD000000000000013;
  }

  if (*(v0 + 16))
  {
    v6 = "extensionIdentity: ";
  }

  else
  {
    v6 = "; subscriptionType: ";
  }

  *&v14[0] = *v0;
  *(&v14[0] + 1) = v4;

  MEMORY[0x1BFB58C90](v5, v6 | 0x8000000000000000);

  MEMORY[0x1BFB58C90](*&v14[0], *(&v14[0] + 1));

  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4F9840);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = *(v0 + 40);
  v14[0] = *(v0 + 24);
  v14[1] = v9;
  v15 = v7;
  v16 = v8;
  v10 = PushSubscription.SubscriptionType.description.getter();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](0x746567647562203BLL, 0xEA0000000000203ALL);
  v11 = type metadata accessor for PushSubscription(0);
  sub_1BF3F1C8C(v0 + *(v11 + 24), v3);
  v12 = sub_1BF4E8994();
  MEMORY[0x1BFB58C90](v12);

  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  return v17;
}

uint64_t PushSubscription.init(control:environment:budget:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a1;
  v8 = [v7 extensionIdentity];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v9 = sub_1BF4E76B4();
  v11 = v10;
  swift_endAccess();

  v28 = v9;
  v29 = v11;
  MEMORY[0x1BFB58C90](14906, 0xE200000000000000);
  v12 = [v7 kind];
  v13 = sub_1BF4E8914();
  v15 = v14;

  MEMORY[0x1BFB58C90](v13, v15);

  v16 = [v7 extensionIdentity];
  v17 = *MEMORY[0x1E69941B0];
  swift_beginAccess();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  if ((*(*(v18 - 8) + 48))(&v16[v17], 1, v18))
  {
    swift_endAccess();

    v19 = [v7 extensionIdentity];
    swift_beginAccess();
    v20 = sub_1BF4E76B4();
    v22 = v21;
    swift_endAccess();
    v16 = v7;
  }

  else
  {
    v20 = sub_1BF4E76B4();
    v22 = v23;
    swift_endAccess();
    v19 = v7;
  }

  *a5 = v20;
  *(a5 + 8) = v22;
  *(a5 + 16) = 0;
  *(a5 + 24) = v28;
  *(a5 + 32) = v29;
  *(a5 + 40) = v7;
  *(a5 + 48) = a2;
  *(a5 + 56) = a3;
  *(a5 + 64) = 0;
  v24 = type metadata accessor for PushSubscription(0);
  return sub_1BF3F1D54(a4, a5 + *(v24 + 24));
}

void Topic.init(_:)(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 extensionIdentity];
  v5 = *MEMORY[0x1E69941B0];
  swift_beginAccess();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  if ((*(*(v6 - 8) + 48))(&v4[v5], 1, v6))
  {
    swift_endAccess();

    v7 = [a1 extensionIdentity];
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
    v8 = sub_1BF4E76B4();
    v10 = v9;
    swift_endAccess();
    v4 = a1;
  }

  else
  {
    v8 = sub_1BF4E76B4();
    v10 = v11;
    swift_endAccess();
    v7 = a1;
  }

  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = 0;
}

{
  v4 = *MEMORY[0x1E69941B0];
  swift_beginAccess();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  if ((*(*(v5 - 8) + 48))(&a1[v4], 1, v5))
  {
    swift_endAccess();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  }

  v6 = sub_1BF4E76B4();
  v8 = v7;
  swift_endAccess();

  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = 1;
}

uint64_t PushSubscription.init(control:pushEnvironment:topic:budget:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a4;
  v11 = a4[1];
  v12 = *(a4 + 16);
  v13 = [a1 extensionIdentity];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v14 = sub_1BF4E76B4();
  v16 = v15;
  swift_endAccess();

  v24 = v14;
  v25 = v16;
  MEMORY[0x1BFB58C90](14906, 0xE200000000000000);
  v17 = [a1 kind];
  v18 = sub_1BF4E8914();
  v20 = v19;

  MEMORY[0x1BFB58C90](v18, v20);

  *(a6 + 24) = v24;
  *(a6 + 32) = v25;
  *(a6 + 40) = a1;
  *(a6 + 48) = a2;
  *(a6 + 56) = a3;
  *(a6 + 64) = 0;
  *a6 = v10;
  *(a6 + 8) = v11;
  *(a6 + 16) = v12;
  v21 = type metadata accessor for PushSubscription(0);
  return sub_1BF3F1D54(a5, a6 + *(v21 + 24));
}

uint64_t PushSubscription.init(widgetExtensionIdentity:pushEnvironment:topic:budget:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a4;
  v9 = *(a4 + 8);
  v10 = *(a4 + 16);
  *(a6 + 24) = a1;
  *(a6 + 32) = a2;
  *(a6 + 48) = 0;
  *(a6 + 56) = 0;
  *(a6 + 40) = a3;
  *(a6 + 64) = 1;
  if (!v9)
  {
    v12 = *MEMORY[0x1E69941B0];
    swift_beginAccess();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
    if ((*(*(v13 - 8) + 48))(&a1[v12], 1, v13))
    {
      swift_endAccess();
      swift_beginAccess();
      v14 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
    }

    else
    {
      v15 = a1;
    }

    v8 = sub_1BF4E76B4();
    v9 = v16;
    swift_endAccess();

    v10 = 1;
  }

  *a6 = v8;
  *(a6 + 8) = v9;
  *(a6 + 16) = v10 & 1;
  v17 = type metadata accessor for PushSubscription(0);
  return sub_1BF3F1D54(a5, a6 + *(v17 + 24));
}

void sub_1BF3F12A0(void *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  if (*(v1 + 64))
  {
    v6 = *(v1 + 48);
    v5 = *(v1 + 56);
    v7 = *(v1 + 40);
    swift_beginAccess();
    v8 = v3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
    v9 = sub_1BF4E76B4();
    v11 = v10;
    swift_endAccess();
    sub_1BF3F1B98(v3, v4, v7, v6, v5, 1);
    v3 = v9;
    v4 = v11;
  }

  else
  {
  }

  *a1 = v3;
  a1[1] = v4;
}

uint64_t PushSubscription.environment.getter()
{
  v1 = 48;
  if (*(v0 + 64))
  {
    v1 = 32;
  }

  v2 = *(v0 + v1);

  return v2;
}

void *PushSubscription.control.getter()
{
  if (*(v0 + 64))
  {
    return 0;
  }

  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void *PushSubscription.widgetExtensionIdentity.getter()
{
  if (*(v0 + 64) != 1)
  {
    return 0;
  }

  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

BOOL _s9ChronoKit16PushSubscriptionV0D4TypeO7ControlV2eeoiySbAG_AGtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  result = 0;
  if (v6 || (sub_1BF4E9734() & 1) != 0)
  {
    sub_1BF3F1508();
    if (sub_1BF4E90A4())
    {
      v7 = v2 == v4 && v3 == v5;
      if (v7 || (sub_1BF4E9734() & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

unint64_t sub_1BF3F1508()
{
  result = qword_1EDC9FDA8;
  if (!qword_1EDC9FDA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC9FDA8);
  }

  return result;
}

BOOL _s9ChronoKit16PushSubscriptionV0D4TypeO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = *(a1 + 40);
  v9 = *a2;
  v8 = a2[1];
  v10 = a2[2];
  v41 = a2[4];
  v42 = a2[3];
  v11 = *(a2 + 40);
  if ((v7 & 1) == 0)
  {
    if ((a2[5] & 1) == 0)
    {
      if (v3 == v9 && v2 == v8 || (v31 = a1[1], v32 = sub_1BF4E9734(), v2 = v31, (v32 & 1) != 0))
      {
        v33 = v2;
        sub_1BF3F1508();
        sub_1BF3F1BEC(v9, v8, v10, v42, v41, 0);
        sub_1BF3F1BEC(v3, v33, v4, v5, v6, 0);
        sub_1BF3F1BEC(v3, v33, v4, v5, v6, 0);
        sub_1BF3F1BEC(v9, v8, v10, v42, v41, 0);
        if (sub_1BF4E90A4())
        {
          if (v5 == v42 && v6 == v41)
          {
            sub_1BF3F1B98(v3, v33, v4, v5, v6, 0);
            sub_1BF3F1B98(v9, v8, v10, v5, v6, 0);
            sub_1BF3F1B98(v9, v8, v10, v5, v6, 0);
            v18 = v3;
            v19 = v33;
            v20 = v4;
            v21 = v5;
            v22 = v6;
            v23 = 0;
            goto LABEL_18;
          }

          v38 = sub_1BF4E9734();
          sub_1BF3F1B98(v3, v33, v4, v5, v6, 0);
          sub_1BF3F1B98(v9, v8, v10, v42, v41, 0);
          sub_1BF3F1B98(v9, v8, v10, v42, v41, 0);
          sub_1BF3F1B98(v3, v33, v4, v5, v6, 0);
          return (v38 & 1) != 0;
        }

        sub_1BF3F1B98(v3, v33, v4, v5, v6, 0);
        sub_1BF3F1B98(v9, v8, v10, v42, v41, 0);
        sub_1BF3F1B98(v9, v8, v10, v42, v41, 0);
        v24 = v3;
        v25 = v33;
        v26 = v4;
        v27 = v5;
        v28 = v6;
        v29 = 0;
      }

      else
      {
        v34 = v31;
        v35 = v6;
        v36 = v6;
        v37 = v2;
        sub_1BF3F1BEC(v3, v34, v4, v5, v36, 0);
        sub_1BF3F1BEC(v9, v8, v10, v42, v41, 0);
        sub_1BF3F1B98(v3, v37, v4, v5, v35, 0);
        v24 = v9;
        v25 = v8;
        v26 = v10;
        v27 = v42;
        v28 = v41;
        v29 = 0;
      }

LABEL_9:
      sub_1BF3F1B98(v24, v25, v26, v27, v28, v29);
      return 0;
    }

LABEL_8:
    v39 = a1[1];
    sub_1BF3F1BEC(v3, v2, v4, v5, v6, v7);
    sub_1BF3F1BEC(v9, v8, v10, v42, v41, v11);
    sub_1BF3F1B98(v3, v39, v4, v5, v6, v7);
    v24 = v9;
    v25 = v8;
    v26 = v10;
    v27 = v42;
    v28 = v41;
    v29 = v11;
    goto LABEL_9;
  }

  if ((a2[5] & 1) == 0)
  {
    goto LABEL_8;
  }

  v12 = a1[1];
  sub_1BF3F1508();
  sub_1BF3F1BEC(v9, v8, v10, v42, v41, 1);
  v13 = v4;
  v14 = v5;
  v15 = v4;
  v16 = v6;
  v17 = v14;
  sub_1BF3F1BEC(v3, v12, v13, v14, v16, 1);
  sub_1BF3F1BEC(v3, v12, v15, v17, v16, 1);
  sub_1BF3F1BEC(v9, v8, v10, v42, v41, 1);
  if ((sub_1BF4E90A4() & 1) == 0)
  {
    sub_1BF3F1B98(v3, v12, v15, v17, v16, 1);
    sub_1BF3F1B98(v9, v8, v10, v42, v41, 1);
    sub_1BF3F1B98(v9, v8, v10, v42, v41, 1);
    v24 = v3;
    v25 = v12;
    v26 = v15;
    v27 = v17;
    v28 = v16;
    v29 = 1;
    goto LABEL_9;
  }

  if (v12 == v8 && v15 == v10)
  {
    sub_1BF3F1B98(v3, v12, v15, v17, v16, 1);
    sub_1BF3F1B98(v9, v12, v15, v42, v41, 1);
    sub_1BF3F1B98(v9, v12, v15, v42, v41, 1);
    v18 = v3;
    v19 = v12;
    v20 = v15;
    v21 = v17;
    v22 = v16;
    v23 = 1;
LABEL_18:
    sub_1BF3F1B98(v18, v19, v20, v21, v22, v23);
    return 1;
  }

  v40 = sub_1BF4E9734();
  sub_1BF3F1B98(v3, v12, v15, v17, v16, 1);
  sub_1BF3F1B98(v9, v8, v10, v42, v41, 1);
  sub_1BF3F1B98(v9, v8, v10, v42, v41, 1);
  sub_1BF3F1B98(v3, v12, v15, v17, v16, 1);
  result = 1;
  if ((v40 & 1) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1BF3F1B98(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, char a6)
{
  if (a6)
  {
  }

  else
  {
  }
}

double sub_1BF3F1BEC(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, char a6)
{
  if (a6)
  {
    a3 = a1;
  }

  else
  {
  }

  v7 = a3;

  return result;
}

uint64_t type metadata accessor for PushSubscription(uint64_t a1)
{
  result = qword_1EDC9AA10;
  if (!qword_1EDC9AA10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF3F1C8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Budget(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF3F1CF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Budget(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF3F1D54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Budget(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL _s9ChronoKit16PushSubscriptionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v4 != v5)
    {
      return 0;
    }
  }

  else if (sub_1BF4E9734() & 1) == 0 || ((v4 ^ v5))
  {
    return 0;
  }

  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = *(a1 + 64);
  v26 = a1[3];
  v27 = v7;
  v28 = v8;
  v29 = v9;
  v30 = v10;
  v31 = v11;
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  v15 = *(a2 + 56);
  v16 = *(a2 + 64);
  v20 = *(a2 + 24);
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  sub_1BF3F1BEC(v26, v7, v8, v9, v10, v11);
  sub_1BF3F1BEC(v20, v12, v13, v14, v15, v16);
  v17 = _s9ChronoKit16PushSubscriptionV0D4TypeO2eeoiySbAE_AEtFZ_0(&v26, &v20);
  sub_1BF3F1B98(v20, v21, v22, v23, v24, v25);
  sub_1BF3F1B98(v26, v27, v28, v29, v30, v31);
  if (!v17)
  {
    return 0;
  }

  v18 = *(type metadata accessor for PushSubscription(0) + 24);

  return _s9ChronoKit6BudgetV2eeoiySbAC_ACtFZ_0(a1 + v18, a2 + v18);
}

unint64_t sub_1BF3F1F1C()
{
  result = qword_1EBDD8B50;
  if (!qword_1EBDD8B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8B50);
  }

  return result;
}

unint64_t sub_1BF3F1F74()
{
  result = qword_1EBDD8B58;
  if (!qword_1EBDD8B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8B58);
  }

  return result;
}

unint64_t sub_1BF3F1FCC()
{
  result = qword_1EBDD8B60;
  if (!qword_1EBDD8B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8B60);
  }

  return result;
}

unint64_t sub_1BF3F2024()
{
  result = qword_1EBDD8B68;
  if (!qword_1EBDD8B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8B68);
  }

  return result;
}

unint64_t sub_1BF3F207C()
{
  result = qword_1EBDD8B70;
  if (!qword_1EBDD8B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8B70);
  }

  return result;
}

unint64_t sub_1BF3F20D4()
{
  result = qword_1EBDD8B78;
  if (!qword_1EBDD8B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8B78);
  }

  return result;
}

uint64_t sub_1BF3F2160(uint64_t a1)
{
  result = type metadata accessor for Budget(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

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

uint64_t sub_1BF3F2204(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF3F2240(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1BF3F228C(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1BF3F2300(uint64_t *a1, int a2)
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

uint64_t sub_1BF3F2348(uint64_t result, int a2, int a3)
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

void static Analytics.noteSnapshotFailure(key:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v3;
  v5[5] = v4;
  v6 = v4;
  v7 = v1;

  if (sub_1BF3F34B4())
  {
  }

  else
  {
    v8 = sub_1BF4E88E4();
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1BF3F2580;
    *(v9 + 24) = v5;
    v11[4] = sub_1BF3F3578;
    v11[5] = v9;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1BF3F3410;
    v11[3] = &block_descriptor_1;
    v10 = _Block_copy(v11);

    AnalyticsSendEventLazy();

    _Block_release(v10);
  }
}

void static Analytics.noteTimelineFailure(key:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v3;
  v5[5] = v4;
  v6 = v4;
  v7 = v1;

  if (sub_1BF3F34B4())
  {
  }

  else
  {
    v8 = sub_1BF4E88E4();
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1BF3F3B00;
    *(v9 + 24) = v5;
    v11[4] = sub_1BF3F3AFC;
    v11[5] = v9;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1BF3F3410;
    v11[3] = &block_descriptor_13;
    v10 = _Block_copy(v11);

    AnalyticsSendEventLazy();

    _Block_release(v10);
  }
}

uint64_t sub_1BF3F2720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  sub_1BF4E76B4();
  v3 = sub_1BF4E88E4();
  swift_endAccess();

  v4 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6940(v3, 0xD000000000000019, 0x80000001BF4F99E0, isUniquelyReferenced_nonNull_native, v6);
  v7 = sub_1BF4E88E4();
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6940(v7, 0x7954746567646977, 0xEA00000000006570, v8, v9);
  return v4;
}

void static Analytics.notePlatterFailure(target:)(uint64_t a1)
{
  v2 = type metadata accessor for ActivityKey(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1BF3F35E8(a1, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1BF3F364C(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  if (sub_1BF3F34B4())
  {
  }

  else
  {
    v7 = sub_1BF4E88E4();
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1BF3F36B0;
    *(v8 + 24) = v6;
    aBlock[4] = sub_1BF3F3AFC;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BF3F3410;
    aBlock[3] = &block_descriptor_23;
    v9 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();

    _Block_release(v9);
  }
}

uint64_t sub_1BF3F2A10(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  sub_1BF4E76B4();
  v1 = sub_1BF4E88E4();
  swift_endAccess();

  v2 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6940(v1, 0xD000000000000019, 0x80000001BF4F99E0, isUniquelyReferenced_nonNull_native, v4);
  return v2;
}

void static Analytics.notePlaceholderFailure(extensionBundleIdentifier:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = aBlock - v5;
  (*(v3 + 16))(aBlock - v5, a1, v2, v4);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  if (sub_1BF3F34B4())
  {
  }

  else
  {
    v9 = sub_1BF4E88E4();
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1BF3F3710;
    *(v10 + 24) = v8;
    aBlock[4] = sub_1BF3F3AFC;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BF3F3410;
    aBlock[3] = &block_descriptor_33;
    v11 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();

    _Block_release(v11);
  }
}

uint64_t sub_1BF3F2CE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  sub_1BF4E76B4();
  v0 = sub_1BF4E88E4();

  v1 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6940(v0, 0xD000000000000019, 0x80000001BF4F99E0, isUniquelyReferenced_nonNull_native, v3);
  return v1;
}

void static Analytics.noteDiagnosticTriggered(identifier:extensionIdentifier:widgetKind:isRemote:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = *a1;
  sub_1BF4E92E4();

  v20 = 0xD00000000000001ELL;
  v21 = 0x80000001BF4F9960;
  v12 = "staleIntervalLapsed";
  v13 = 0xD000000000000011;
  if (v11 != 1)
  {
    v13 = 0xD000000000000013;
    v12 = "interactionFailed";
  }

  if (v11)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0xD000000000000013;
  }

  if (v11)
  {
    v15 = v12;
  }

  else
  {
    v15 = "idealizedDateComponents";
  }

  MEMORY[0x1BFB58C90](v14, v15 | 0x8000000000000000);

  v16 = swift_allocObject();
  *(v16 + 16) = a6 & 1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  *(v16 + 48) = a5;

  if (sub_1BF3F34B4())
  {
  }

  else
  {
    v17 = sub_1BF4E88E4();

    v18 = swift_allocObject();
    *(v18 + 16) = sub_1BF3F377C;
    *(v18 + 24) = v16;
    v24 = sub_1BF3F3AFC;
    v25 = v18;
    v20 = MEMORY[0x1E69E9820];
    v21 = 1107296256;
    v22 = sub_1BF3F3410;
    v23 = &block_descriptor_43;
    v19 = _Block_copy(&v20);

    AnalyticsSendEventLazy();

    _Block_release(v19);
  }
}

uint64_t sub_1BF3F2FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1BF4E8CC4();
  v6 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6940(v5, 0x65746F6D65527369, 0xE800000000000000, isUniquelyReferenced_nonNull_native, v8);
  v9 = sub_1BF4E88E4();
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6940(v9, 0xD000000000000019, 0x80000001BF4F99E0, v10, v11);
  v12 = sub_1BF4E88E4();
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6940(v12, 0x7954746567646977, 0xEA00000000006570, v13, v14);
  return v6;
}

ChronoKit::Analytics::ArchiveProviderType_optional __swiftcall Analytics.ArchiveProviderType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_1BF3F3104@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

ChronoKit::Analytics::InteractionTarget_optional __swiftcall Analytics.InteractionTarget.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

ChronoKit::Analytics::UpdateFailureType_optional __swiftcall Analytics.UpdateFailureType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 11;
  if (rawValue < 0xB)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

void static Analytics.noteLiveActivityInteraction(bundleIdentifier:interactionTarget:)(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *a3;
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;

  if (sub_1BF3F34B4())
  {
  }

  else
  {
    v7 = sub_1BF4E88E4();
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1BF3F378C;
    *(v8 + 24) = v6;
    v10[4] = sub_1BF3F3AFC;
    v10[5] = v8;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1BF3F3410;
    v10[3] = &block_descriptor_53;
    v9 = _Block_copy(v10);

    AnalyticsSendEventLazy();

    _Block_release(v9);
  }
}

unint64_t sub_1BF3F32CC(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8BA0, &qword_1BF4ED350);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BF4ECFE0;
  *(inited + 32) = 0x79546E6F69746361;
  *(inited + 40) = 0xEA00000000006570;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 56) = 0x696669746E656469;
  *(inited + 64) = 0xEA00000000007265;
  *(inited + 72) = sub_1BF4E88E4();
  v5 = sub_1BF3DA5B8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8BA8, &qword_1BF4ED358);
  swift_arrayDestroy();
  return v5;
}

id sub_1BF3F3410(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_1BF3F1508();
    v4 = sub_1BF4E8744();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1BF3F34B4()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_1BF4E8764();
  if (*(v2 + 16))
  {
    sub_1BF3CD5D0(0xD000000000000011, 0x80000001BF4F9480, v3);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BF3F35E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF3F364C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF3F36B0()
{
  v1 = *(type metadata accessor for ActivityKey(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1BF3F2A10(v2);
}

uint64_t sub_1BF3F3710()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);

  return sub_1BF3F2CE8();
}

unint64_t sub_1BF3F379C()
{
  result = qword_1EBDD8B80;
  if (!qword_1EBDD8B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8B80);
  }

  return result;
}

unint64_t sub_1BF3F37F4()
{
  result = qword_1EBDD8B88;
  if (!qword_1EBDD8B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8B88);
  }

  return result;
}

unint64_t sub_1BF3F384C()
{
  result = qword_1EBDD8B90;
  if (!qword_1EBDD8B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8B90);
  }

  return result;
}

unint64_t sub_1BF3F38A4()
{
  result = qword_1EBDD8B98;
  if (!qword_1EBDD8B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8B98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Analytics.UpdateFailureType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Analytics.UpdateFailureType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t PowerlogOwner.hashValue.getter(double a1)
{
  v2 = *v1;
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](v2);
  return sub_1BF4E9844();
}

unint64_t sub_1BF3F3B98()
{
  result = qword_1EBDD8BB0;
  if (!qword_1EBDD8BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8BB0);
  }

  return result;
}

uint64_t CHSWidgetRenderingMode.widgetRenderingMode.getter(uint64_t a1)
{
  if (!a1)
  {
    return MEMORY[0x1EEDE7F40]();
  }

  if (a1 != 1)
  {
    if (a1 == 2)
    {
      return MEMORY[0x1EEDE7F30]();
    }

    return MEMORY[0x1EEDE7F40]();
  }

  return MEMORY[0x1EEDE7F20]();
}

uint64_t sub_1BF3F3C24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1EDCA6A00;
  swift_beginAccess();
  v5 = sub_1BF4E8294();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1BF3F3CB0(uint64_t a1, uint64_t *a2, double a3)
{
  v5 = sub_1BF4E8294();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5, v7);
  v10 = *a2;
  v11 = qword_1EDCA6A00;
  swift_beginAccess();
  (*(v6 + 40))(v10 + v11, v9, v5);
  return swift_endAccess();
}

uint64_t sub_1BF3F3DC8@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EDCA6A00;
  swift_beginAccess();
  v4 = sub_1BF4E8294();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t WidgetCacheManager.__allocating_init(subdirectory:fileExtension:descriptorProvider:protectionLevelProvider:fileManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{

  sub_1BF38E49C(a5, v22);
  sub_1BF38E49C(a6, v21);
  v12 = type metadata accessor for WidgetCacheURLProvider();
  v13 = swift_allocObject();
  v13[3] = 0;
  v13[2] = 0;
  swift_beginAccess();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = 0x742D6F6E6F726863;
  v13[5] = 0xEF656E696C656D69;
  sub_1BF38E49C(v22, v20);
  sub_1BF38E49C(v21, v19);
  v17 = v12;
  v18 = &protocol witness table for WidgetCacheURLProvider;
  *&v16 = v13;
  type metadata accessor for WidgetCacheManager(0);
  v14 = swift_allocObject();

  sub_1BF4E8284();
  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  *(v14 + 160) = 1;
  *(v14 + 24) = a1;
  *(v14 + 32) = a2;
  sub_1BF38E610(v20, v14 + 40);
  sub_1BF38E610(&v16, v14 + 80);
  sub_1BF38E610(v19, v14 + 120);
  *(v14 + 16) = a7;
  return v14;
}

uint64_t sub_1BF3F4084@<X0>(_BYTE *a1@<X8>)
{
  v18 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8C28, &qword_1BF4ED540);
  v19 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v18 - v2;
  v4 = sub_1BF4E7334();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  sub_1BF38C8B4(&qword_1EBDD8C30, &qword_1EBDD8C28, &qword_1BF4ED540, MEMORY[0x1E6993F88]);
  v14 = v20;
  sub_1BF4E7034();
  if (v14)
  {
  }

  else
  {
    sub_1BF4E7614();
    (*(v19 + 8))(v3, v1);
    (*(v5 + 32))(v13, v10, v4);
    sub_1BF4E7324();
    v15 = sub_1BF4E7274();
    v16 = *(v5 + 8);
    v16(v7, v4);
    result = (v16)(v13, v4);
    if (v15)
    {
      *v18 = 1;
      return result;
    }
  }

  type metadata accessor for WidgetCacheManager.CacheManagementError(0);
  sub_1BF3A5AA4(&qword_1EBDD8BC8, type metadata accessor for WidgetCacheManager.CacheManagementError, &unk_1BF4ED4C0);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_1BF3F43E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[1] = a1;
  v21[2] = a2;
  v25 = sub_1BF4E8454();
  v4 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a3 + 16);
  v28 = MEMORY[0x1E69E7CC0];
  sub_1BF3A31DC(0, v7, 0);
  v8 = v28;
  if (v7)
  {
    v10 = *(v4 + 16);
    v9 = v4 + 16;
    v11 = a3 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v23 = *(v9 + 56);
    v24 = v10;
    v22 = (v9 - 8);
    do
    {
      v12 = v25;
      v13 = v9;
      v24(v6, v11, v25);
      sub_1BF3A5AA4(&qword_1EDC9D778, MEMORY[0x1E6985A18], MEMORY[0x1E6985A38]);
      sub_1BF4E8B54();
      (*v22)(v6, v12);
      v14 = v26;
      v15 = v27;
      v28 = v8;
      v17 = *(v8 + 16);
      v16 = *(v8 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1BF3A31DC((v16 > 1), v17 + 1, 1);
        v8 = v28;
      }

      *(v8 + 16) = v17 + 1;
      v18 = v8 + 16 * v17;
      *(v18 + 32) = v14;
      *(v18 + 40) = v15;
      v11 += v23;
      --v7;
      v9 = v13;
    }

    while (v7);
  }

  v26 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
  sub_1BF38C8B4(&qword_1EDC9F180, &unk_1EBDD9BB0, &qword_1BF4EC140, MEMORY[0x1E69E6310]);
  v19 = sub_1BF4E8894();

  return v19;
}

uint64_t sub_1BF3F464C(void *a1)
{
  v33 = type metadata accessor for WidgetCacheKey(0);
  MEMORY[0x1EEE9AC00](v33);
  v34 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v28 - v5;
  v7 = sub_1BF4E7194();
  v38 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v31 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v1;
  sub_1BF38E49C(v1 + 40, v35);
  v9 = v36;
  v10 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v12 = a1[3];
  v11 = a1[4];
  v13 = __swift_project_boxed_opaque_existential_1(a1, v12);
  v15 = v11 + 40;
  v14 = *(v11 + 40);
  v28[1] = v13;
  v29 = v14;
  v30 = v11;
  v16 = v14(v12, v11);
  v17 = *(v10 + 48);
  v18 = v10;
  v19 = v7;
  v20 = v38;
  v17(v16, v9, v18);

  if ((*(v20 + 48))(v6, 1, v19) == 1)
  {
    sub_1BF38C9B4(v6, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    type metadata accessor for WidgetCacheManager.CacheManagementError(0);
    sub_1BF3A5AA4(&qword_1EBDD8BC8, type metadata accessor for WidgetCacheManager.CacheManagementError, &unk_1BF4ED4C0);
    swift_allocError();
    *v21 = v29(v12, v30);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v22 = v31;
    (*(v20 + 32))(v31, v6, v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    sub_1BF38E49C(v32 + 80, v35);
    v23 = v36;
    v24 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    v25 = v34;
    (*(v20 + 16))(v34, v22, v19);
    v26 = *(v33 + 24);
    *(v25 + *(v33 + 20)) = 0;
    *(v25 + v26) = 0;
    v15 = (*(v24 + 16))(v25, v23, v24);
    (*(v20 + 8))(v22, v19);
    sub_1BF39D654(v25, type metadata accessor for WidgetCacheKey);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
  }

  return v15;
}

uint64_t sub_1BF3F4A08(id *a1, double a2)
{
  v3 = sub_1BF4E7194();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BF4E8454();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  v17 = MEMORY[0x1E69E7CD0];
  if (sub_1BF3A53D4(a1))
  {
    (*(v8 + 104))(v10, *MEMORY[0x1E6985A08], v7);
    sub_1BF4AC8C8(v13, v10);
    (*(v8 + 8))(v13, v7);
  }

  sub_1BF3F4FF4(a1, v6);
  v14 = URL.hasRemovedFromStoreExtendedAttribute.getter();
  (*(v4 + 8))(v6, v3);
  if (v14)
  {
    (*(v8 + 104))(v10, *MEMORY[0x1E6985A10], v7);
    sub_1BF4AC8C8(v13, v10);
    (*(v8 + 8))(v13, v7);
  }

  return v17;
}

uint64_t WidgetCacheManager.__allocating_init(identifier:cacheKeyProvider:cacheURLProvider:protectionLevelProvider:fileManager:forReading:)(uint64_t a1, uint64_t a2, __int128 *a3, void *a4, __int128 *a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v15 = a4[3];
  v14 = a4[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a4, v15);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v17);
  v21 = sub_1BF3F772C(a1, a2, a3, v19, a5, a6, v7, v23[1], v15, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  return v21;
}

uint64_t WidgetCacheManager.init(identifier:cacheKeyProvider:cacheURLProvider:protectionLevelProvider:fileManager:forReading:)(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5, uint64_t a6, char a7, __n128 a8)
{
  sub_1BF4E8284();
  *(v8 + 160) = a7 ^ 1;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  sub_1BF38E610(a3, v8 + 40);
  sub_1BF38E610(a4, v8 + 80);
  sub_1BF38E610(a5, v8 + 120);
  *(v8 + 16) = a6;
  return v8;
}

uint64_t sub_1BF3F4E40(double a1)
{
  v2 = qword_1EDCA6A00;
  v3 = sub_1BF4E8294();
  v4 = *(*(v3 - 8) + 8);

  return v4(v1 + v2, v3);
}

uint64_t WidgetCacheManager.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 120));
  v1 = qword_1EDCA6A00;
  v2 = sub_1BF4E8294();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t WidgetCacheManager.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 120));
  v1 = qword_1EDCA6A00;
  v2 = sub_1BF4E8294();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF3F4FF4@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8C18, &unk_1BF4ED530);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19[-1] - v5;
  v7 = type metadata accessor for WidgetCacheKey(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF38E49C(v2 + 40, v19);
  v12 = v20;
  v11 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  (*(v11 + 56))(a1, v12, v11);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1BF38C9B4(v6, &qword_1EBDD8C18, &unk_1BF4ED530);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    v13 = [*a1 extensionIdentity];
    sub_1BF3F79D0();
    swift_allocError();
    *v14 = v13;
    return swift_willThrow();
  }

  else
  {
    sub_1BF39D9EC(v6, v10, type metadata accessor for WidgetCacheKey);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    sub_1BF38E49C(v2 + 80, v19);
    v16 = v20;
    v17 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (*(v17 + 24))(v10, v16, v17);
    sub_1BF39D654(v10, type metadata accessor for WidgetCacheKey);
    return __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }
}

uint64_t sub_1BF3F5278@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8BE0, &qword_1BF4ED500);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19[-1] - v5;
  v7 = type metadata accessor for ControlCacheKey(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF38E49C(v2 + 40, v19);
  v12 = v20;
  v11 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  (*(v11 + 56))(a1, v12, v11);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1BF38C9B4(v6, &qword_1EBDD8BE0, &qword_1BF4ED500);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    v13 = [*a1 extensionIdentity];
    sub_1BF3F79D0();
    swift_allocError();
    *v14 = v13;
    return swift_willThrow();
  }

  else
  {
    sub_1BF39D9EC(v6, v10, type metadata accessor for ControlCacheKey);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    sub_1BF38E49C(v2 + 80, v19);
    v16 = v20;
    v17 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (*(v17 + 24))(v10, v16, v17);
    sub_1BF39D654(v10, type metadata accessor for ControlCacheKey);
    return __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }
}

uint64_t sub_1BF3F54FC(id *a1, void (*a2)(uint64_t *__return_ptr, char *, char *), uint64_t a3)
{
  v93 = a3;
  v94 = a2;
  v106[5] = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for ControlEntryKey(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v88 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v89 = &v88 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v90 = &v88 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8BF0, &qword_1BF4ED508);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v98 = &v88 - v12;
  v13 = sub_1BF4E6D64();
  v14 = *(v13 - 8);
  v101 = v13;
  v102 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v103 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1BF4E8424();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v97 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BF4E7194();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v95 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v88 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v96 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v88 - v27;
  v29 = *(v18 + 56);
  v29(&v88 - v27, 1, 1, v17, v26);
  v104 = v3;
  v30 = v99;
  sub_1BF3F5278(a1, v22);
  v100 = v28;
  if (v30)
  {
    v31 = v18;
    v32 = v17;
    v37 = v101;
    v38 = v103;
    v39 = v104;
    v40 = v100;
    v41 = v102;
    if (*(v104 + 160) == 1)
    {
      v99 = a1;
      v42 = v100;
      v106[0] = v30;
      v43 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD91C0, &unk_1BF4ED510);
      v44 = v98;
      v45 = swift_dynamicCast();
      v46 = v41[7];
      if (v45)
      {
        v46(v44, 0, 1, v37);
        (v41[4])(v38, v44, v37);
        if (sub_1BF41B748())
        {
          v40 = v42;
          if (qword_1EDC9D4C0 != -1)
          {
            swift_once();
          }

          v47 = sub_1BF4E7B54();
          __swift_project_value_buffer(v47, qword_1EDCA6940);
          v48 = v90;
          sub_1BF3A5A3C(v99, v90, type metadata accessor for ControlEntryKey);
          v49 = sub_1BF4E7B34();
          v50 = sub_1BF4E8E84();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            v104 = swift_slowAlloc();
            v106[0] = v104;
            *v51 = 136446210;
            v52 = v89;
            sub_1BF3A5A3C(v48, v89, type metadata accessor for ControlEntryKey);
            sub_1BF39D654(v48, type metadata accessor for ControlEntryKey);
            v53 = ControlEntryKey.description.getter();
            v55 = v54;
            sub_1BF39D654(v52, type metadata accessor for ControlEntryKey);
            v56 = sub_1BF38D65C(v53, v55, v106);

            *(v51 + 4) = v56;
            _os_log_impl(&dword_1BF389000, v49, v50, "Not removing item for key %{public}s because of keybag", v51, 0xCu);
            v57 = v104;
            __swift_destroy_boxed_opaque_existential_1Tm(v104);
            MEMORY[0x1BFB5A5D0](v57, -1, -1);
            MEMORY[0x1BFB5A5D0](v51, -1, -1);

            (v102[1])(v103, v101);
          }

          else
          {
            sub_1BF39D654(v48, type metadata accessor for ControlEntryKey);

            (v102[1])(v103, v37);
          }

          goto LABEL_26;
        }

        (v41[1])(v38, v37);
      }

      else
      {
        v46(v44, 1, 1, v37);
        sub_1BF38C9B4(v44, &qword_1EBDD8BF0, &qword_1BF4ED508);
      }

      v40 = v42;
      v59 = v96;
      sub_1BF38C94C(v42, v96, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
      if ((*(v31 + 48))(v59, 1, v32) == 1)
      {
        sub_1BF38C9B4(v59, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
      }

      else
      {
        v60 = v39;
        v61 = v31;
        v62 = *(v31 + 32);
        v63 = v95;
        v62(v95, v59, v32);
        v64 = v60[2];
        v65 = sub_1BF4E7094();
        v106[0] = 0;
        v66 = [v64 removeItemAtURL:v65 error:v106];

        if (v66)
        {
          v104 = v61;
          v67 = qword_1EDC9EFD8;
          v68 = v106[0];
          if (v67 != -1)
          {
            swift_once();
          }

          v69 = sub_1BF4E7B54();
          __swift_project_value_buffer(v69, qword_1EDCA6A48);
          v70 = v88;
          sub_1BF3A5A3C(v99, v88, type metadata accessor for ControlEntryKey);
          v71 = v30;
          v72 = sub_1BF4E7B34();
          v73 = sub_1BF4E8E84();

          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            v103 = v32;
            v75 = v74;
            v101 = swift_slowAlloc();
            v102 = swift_slowAlloc();
            v106[0] = v102;
            *v75 = 136446466;
            v76 = v89;
            sub_1BF3A5A3C(v70, v89, type metadata accessor for ControlEntryKey);
            sub_1BF39D654(v70, type metadata accessor for ControlEntryKey);
            v77 = ControlEntryKey.description.getter();
            v79 = v78;
            sub_1BF39D654(v76, type metadata accessor for ControlEntryKey);
            v80 = sub_1BF38D65C(v77, v79, v106);

            *(v75 + 4) = v80;
            *(v75 + 12) = 2114;
            v81 = v30;
            v82 = _swift_stdlib_bridgeErrorToNSError();
            *(v75 + 14) = v82;
            v83 = v101;
            *v101 = v82;
            _os_log_impl(&dword_1BF389000, v72, v73, "Removing item for key %{public}s because  %{public}@", v75, 0x16u);
            sub_1BF38C9B4(v83, &unk_1EBDD9260, &qword_1BF4EC380);
            MEMORY[0x1BFB5A5D0](v83, -1, -1);
            v84 = v102;
            __swift_destroy_boxed_opaque_existential_1Tm(v102);
            MEMORY[0x1BFB5A5D0](v84, -1, -1);
            MEMORY[0x1BFB5A5D0](v75, -1, -1);

            (v104[1])(v95, v103);
          }

          else
          {
            sub_1BF39D654(v70, type metadata accessor for ControlEntryKey);

            (v104[1])(v95, v32);
          }
        }

        else
        {
          v85 = v106[0];
          v86 = sub_1BF4E6FF4();

          swift_willThrow();
          (*(v61 + 8))(v63, v32);
        }
      }
    }

LABEL_26:
    swift_willThrow();
    return sub_1BF38C9B4(v40, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
  }

  sub_1BF38C9B4(v28, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
  (*(v18 + 16))(v28, v22, v17);
  (v29)(v28, 0, 1, v17);
  v33 = v104;
  swift_beginAccess();
  sub_1BF38E49C((v33 + 15), v106);
  v34 = v106[4];
  __swift_project_boxed_opaque_existential_1(v106, v106[3]);
  v99 = a1;
  v35 = [*a1 extensionIdentity];
  v36 = v97;
  v34[2]();

  __swift_destroy_boxed_opaque_existential_1Tm(v106);
  if (v104[20])
  {
    v58 = v104[2];
    sub_1BF3B36F0(v22, v58);
  }

  v94(&v105, v22, v36);
  (*(v91 + 8))(v36, v92);
  (*(v18 + 8))(v22, v17);
  sub_1BF38C9B4(v100, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
  return v105;
}

void sub_1BF3F6194(uint64_t *a1)
{
  v2 = *(sub_1BF4E8454() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1BF4C86D4(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1BF3F623C(v5);
  *a1 = v3;
}

void sub_1BF3F623C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1BF4E9694();
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
        sub_1BF4E8454();
        v6 = sub_1BF4E8C04();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1BF4E8454() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1BF3F662C(v8, v9, a1, v4);
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
    sub_1BF3F6368(0, v2, 1, a1);
  }
}

void sub_1BF3F6368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1BF4E8454();
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v31 - v11;
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v13 + 16);
    v43 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v39 = (v13 + 32);
    v40 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      (v42)(v44, v21, v8, v14);
      v25 = v45;
      v24(v45, v22, v8);
      sub_1BF3A5AA4(&qword_1EBDD8C20, MEMORY[0x1E6985A18], MEMORY[0x1E6985A28]);
      v26 = sub_1BF4E88A4();
      v27 = *v18;
      (*v18)(v25, v8);
      v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = &v36[v32];
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v28(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1BF3F662C(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = sub_1BF4E8454();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v127 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v134 = &v119 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v140 = &v119 - v14;
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v20 = sub_1BF4C86C0(v20);
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_1BF3F7054(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1BF4C86C0(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        sub_1BF4C8634(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = MEMORY[0x1E69E7CC0];
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26, v16);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      (v27)(v140, v29, v26);
      v130 = sub_1BF3A5AA4(&qword_1EBDD8C20, MEMORY[0x1E6985A18], MEMORY[0x1E6985A28]);
      LODWORD(v133) = sub_1BF4E88A4();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      v31(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = sub_1BF4E88A4() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v133(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1BF4322F0(0, *(v20 + 2) + 1, 1, v20);
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v20 = sub_1BF4322F0((v53 > 1), v54 + 1, 1, v20);
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_1BF3F7054(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1BF4C86C0(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        sub_1BF4C8634(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_1BF3A5AA4(&qword_1EBDD8C20, MEMORY[0x1E6985A18], MEMORY[0x1E6985A28]);
    v109 = sub_1BF4E88A4();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_1BF3F7054(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = sub_1BF4E8454();
  v8 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v39 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v50 = a3;
  v15 = (a2 - a1) / v13;
  v54 = a1;
  v53 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v42 = a4;
      v43 = (v8 + 16);
      v40 = (v8 + 8);
      v41 = a1;
      v28 = a4 + v17;
      v29 = v50;
      v44 = v27;
      do
      {
        v39 = v26;
        v30 = a2 + v27;
        v46 = a2 + v27;
        v47 = v26;
        v45 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v54 = a2;
            v26 = v39;
            goto LABEL_59;
          }

          v32 = v29;
          v50 = v29 + v27;
          v33 = v28 + v27;
          v34 = *v43;
          v35 = v48;
          v36 = v51;
          (*v43)(v48, v28 + v27, v51);
          v37 = v49;
          v34(v49, v30, v36);
          sub_1BF3A5AA4(&qword_1EBDD8C20, MEMORY[0x1E6985A18], MEMORY[0x1E6985A28]);
          LOBYTE(v34) = sub_1BF4E88A4();
          v38 = *v40;
          (*v40)(v37, v36);
          v38(v35, v36);
          if (v34)
          {
            break;
          }

          v29 = v50;
          if (v32 < v28 || v50 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v46;
            a1 = v41;
          }

          else
          {
            v30 = v46;
            a1 = v41;
            if (v32 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = v33;
          v28 = v33;
          v31 = v33 > v42;
          v27 = v44;
          a2 = v45;
          if (!v31)
          {
            v26 = v47;
            goto LABEL_58;
          }
        }

        v29 = v50;
        if (v32 < v45 || v50 >= v45)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v41;
        }

        else
        {
          a2 = v46;
          a1 = v41;
          if (v32 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v47;
        v27 = v44;
      }

      while (v28 > v42);
    }

LABEL_58:
    v54 = a2;
LABEL_59:
    v52 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v47 = a4 + v16;
    v52 = a4 + v16;
    if (v16 >= 1 && a2 < v50)
    {
      v45 = *(v8 + 16);
      v46 = v8 + 16;
      v43 = v13;
      v44 = (v8 + 8);
      do
      {
        v19 = v48;
        v20 = v51;
        v21 = v45;
        (v45)(v48, a2, v51);
        v22 = v49;
        v21(v49, a4, v20);
        sub_1BF3A5AA4(&qword_1EBDD8C20, MEMORY[0x1E6985A18], MEMORY[0x1E6985A28]);
        LOBYTE(v21) = sub_1BF4E88A4();
        v23 = *v44;
        (*v44)(v22, v20);
        v23(v19, v20);
        if (v21)
        {
          v24 = v43;
          if (a1 < a2 || a1 >= &v43[a2])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v24;
        }

        else
        {
          v24 = v43;
          v25 = &v43[a4];
          if (a1 < a4 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = v25;
          a4 += v24;
        }

        a1 += v24;
        v54 = a1;
      }

      while (a4 < v47 && a2 < v50);
    }
  }

  sub_1BF3F7648(&v54, &v53, &v52);
}

uint64_t sub_1BF3F7648(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1BF4E8454();
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

uint64_t sub_1BF3F772C(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, __int128 *a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v21 = a9;
  v22 = a10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v20);
  (*(*(a9 - 8) + 32))(boxed_opaque_existential_0, a4, a9);
  type metadata accessor for WidgetCacheManager(0);
  v18 = swift_allocObject();
  sub_1BF4E8284();
  *(v18 + 160) = a7 ^ 1;
  *(v18 + 24) = a1;
  *(v18 + 32) = a2;
  sub_1BF38E610(a3, v18 + 40);
  sub_1BF38E610(&v20, v18 + 80);
  sub_1BF38E610(a5, v18 + 120);
  *(v18 + 16) = a6;
  return v18;
}

uint64_t sub_1BF3F7914(uint64_t a1)
{
  result = sub_1BF4E9034();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for WidgetEntryKey(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1BF3F79D0()
{
  result = qword_1EBDD8BE8;
  if (!qword_1EBDD8BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8BE8);
  }

  return result;
}

uint64_t sub_1BF3F7A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a2;
  v25 = a3;
  v26 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8C00, &qword_1BF4ED528);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AF8, &qword_1BF4EC370);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_1BF4E8424();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v21 - v16;
  sub_1BF38C94C(a4, v10, &qword_1EBDD8AF8, &qword_1BF4EC370);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1BF38C9B4(v10, &qword_1EBDD8AF8, &qword_1BF4EC370);
    return sub_1BF4E7054();
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
    (*(v12 + 16))(v14, v17, v11);
    v19 = MEMORY[0x1E69859A8];
    sub_1BF3A5AA4(&qword_1EBDD8C08, MEMORY[0x1E69859A8], MEMORY[0x1E69859D0]);
    sub_1BF3A5AA4(&qword_1EDC96468, v19, MEMORY[0x1E69859B0]);
    sub_1BF4E7604();
    sub_1BF38C8B4(&qword_1EBDD8C10, &qword_1EBDD8C00, &qword_1BF4ED528, MEMORY[0x1E6993F80]);
    v20 = v23;
    sub_1BF4E7044();
    (*(v22 + 8))(v7, v20);
    return (*(v12 + 8))(v17, v11);
  }
}

void CHSConfiguredWidgetDescriptor.powerlogViewIdentity.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 container];
  if (!v4)
  {
    v10 = [v1 widget];
    v11 = [v2 uniqueIdentifier];
    v12 = sub_1BF4E8914();
    v14 = v13;

    *a1 = v10;
    *(a1 + 8) = v12;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 1;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = v14;
    return;
  }

  v5 = v4;
  if ([v1 isSuggestion])
  {
    v6 = [v5 uniqueIdentifier];
    v7 = sub_1BF4E8914();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v15 = [v2 widget];
  v16 = [v2 uniqueIdentifier];
  v17 = sub_1BF4E8914();
  v19 = v18;

  v20 = [v5 isStack];
  v21 = [v2 container];
  if (!v21)
  {

    goto LABEL_10;
  }

  v22 = v21;
  if ([v21 location] != 1)
  {
    v23 = [v22 location];

    if (v23 > 4)
    {
      if (v23 <= 6)
      {
        v24 = 1;
        if (v23 == 5)
        {
          v23 = 4;
        }

        else
        {
          v23 = 5;
        }

        goto LABEL_12;
      }

      switch(v23)
      {
        case 7:
          v24 = 1;
          v23 = 6;
          goto LABEL_12;
        case 8:
          v24 = 1;
          v23 = 7;
          goto LABEL_12;
        case 9:
          v24 = 1;
          v23 = 8;
          goto LABEL_12;
      }
    }

    else
    {
      if (v23 > 1)
      {
        if (v23 != 2)
        {
          v24 = 1;
          if (v23 == 3)
          {
            v23 = 2;
          }

          else
          {
            v23 = 3;
          }

          goto LABEL_12;
        }

        v23 = 1;
        goto LABEL_11;
      }

      if (!v23)
      {
LABEL_11:
        v24 = 1;
        goto LABEL_12;
      }

      if (v23 == 1)
      {
        v23 = 0;
        v24 = 0;
        goto LABEL_12;
      }
    }

LABEL_10:
    v23 = 0;
    goto LABEL_11;
  }

  v23 = [v22 page];

  v24 = 0;
LABEL_12:
  *a1 = v15;
  *(a1 + 8) = v17;
  *(a1 + 40) = v20;
  *(a1 + 48) = v23;
  *(a1 + 56) = v24;
  *(a1 + 16) = v19;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
}

void CHSConfiguredWidgetDescriptor.powerlogUpdateIdentity.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 container];
  if (!v4)
  {
    v10 = [v1 widget];
    v11 = [v2 uniqueIdentifier];
    v12 = sub_1BF4E8914();
    v14 = v13;

    *a1 = v10;
    *(a1 + 8) = v12;
    *(a1 + 48) = 1;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 16) = v14;
    *(a1 + 24) = 0;
    return;
  }

  v5 = v4;
  if ([v1 isSuggestion])
  {
    v6 = [v5 uniqueIdentifier];
    v7 = sub_1BF4E8914();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v15 = [v2 widget];
  v16 = [v2 uniqueIdentifier];
  v17 = sub_1BF4E8914();
  v19 = v18;

  v20 = [v2 container];
  if (!v20)
  {

    goto LABEL_10;
  }

  v21 = v20;
  if ([v20 location] != 1)
  {
    v22 = [v21 location];

    if (v22 > 4)
    {
      if (v22 <= 6)
      {
        v23 = 1;
        if (v22 == 5)
        {
          v22 = 4;
        }

        else
        {
          v22 = 5;
        }

        goto LABEL_12;
      }

      switch(v22)
      {
        case 7:
          v23 = 1;
          v22 = 6;
          goto LABEL_12;
        case 8:
          v23 = 1;
          v22 = 7;
          goto LABEL_12;
        case 9:
          v23 = 1;
          v22 = 8;
          goto LABEL_12;
      }
    }

    else
    {
      if (v22 > 1)
      {
        if (v22 != 2)
        {
          v23 = 1;
          if (v22 == 3)
          {
            v22 = 2;
          }

          else
          {
            v22 = 3;
          }

          goto LABEL_12;
        }

        v22 = 1;
        goto LABEL_11;
      }

      if (!v22)
      {
LABEL_11:
        v23 = 1;
        goto LABEL_12;
      }

      if (v22 == 1)
      {
        v22 = 0;
        v23 = 0;
        goto LABEL_12;
      }
    }

LABEL_10:
    v22 = 0;
    goto LABEL_11;
  }

  v22 = [v21 page];

  v23 = 0;
LABEL_12:
  *a1 = v15;
  *(a1 + 8) = v17;
  *(a1 + 48) = v23;
  *(a1 + 16) = v19;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 40) = v22;
}

void CHSControlConfigurationItem.powerlogViewIdentity(isStateBased:)(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = [v3 location];
  if (v6 <= 4)
  {
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        v7 = 1;
        if (v6 == 3)
        {
          v8 = 2;
        }

        else
        {
          v8 = 3;
        }

        goto LABEL_22;
      }

      v8 = 1;
LABEL_18:
      v7 = 1;
      goto LABEL_22;
    }

    if (v6 == 1)
    {
      v8 = 0;
      v7 = 0;
      goto LABEL_22;
    }

LABEL_15:
    v8 = 0;
    goto LABEL_18;
  }

  if (v6 > 6)
  {
    switch(v6)
    {
      case 7:
        v7 = 1;
        v8 = 6;
        goto LABEL_22;
      case 8:
        v7 = 1;
        v8 = 7;
        goto LABEL_22;
      case 9:
        v7 = 1;
        v8 = 8;
        goto LABEL_22;
    }

    goto LABEL_15;
  }

  v7 = 1;
  if (v6 == 5)
  {
    v8 = 4;
  }

  else
  {
    v8 = 5;
  }

LABEL_22:
  v9 = [v3 controlIdentity];
  v10 = [v3 uniqueIdentifier];
  v11 = sub_1BF4E8914();
  v13 = v12;

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;
  *(a2 + 24) = v8;
  *(a2 + 32) = v7;
  *(a2 + 33) = a1 & 1;
}

void CHSControlConfigurationItem.powerlogUpdateIdentity.getter(uint64_t a1@<X8>)
{
  v3 = [v1 location];
  if (v3 <= 4)
  {
    if (v3 > 1)
    {
      if (v3 != 2)
      {
        v4 = 1;
        if (v3 == 3)
        {
          v5 = 2;
        }

        else
        {
          v5 = 3;
        }

        goto LABEL_22;
      }

      v5 = 1;
LABEL_18:
      v4 = 1;
      goto LABEL_22;
    }

    if (v3 == 1)
    {
      v5 = 0;
      v4 = 0;
      goto LABEL_22;
    }

LABEL_15:
    v5 = 0;
    goto LABEL_18;
  }

  if (v3 > 6)
  {
    switch(v3)
    {
      case 7:
        v4 = 1;
        v5 = 6;
        goto LABEL_22;
      case 8:
        v4 = 1;
        v5 = 7;
        goto LABEL_22;
      case 9:
        v4 = 1;
        v5 = 8;
        goto LABEL_22;
    }

    goto LABEL_15;
  }

  v4 = 1;
  if (v3 == 5)
  {
    v5 = 4;
  }

  else
  {
    v5 = 5;
  }

LABEL_22:
  v6 = [v1 controlIdentity];
  v7 = [v1 uniqueIdentifier];
  v8 = sub_1BF4E8914();
  v10 = v9;

  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10;
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;
}

uint64_t DuetWidgetBudgetIdentity.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DuetWidgetBudgetIdentity.init(for:kind:intentHash:)@<X0>(uint64_t a1@<X0>, char a5@<W4>, uint64_t *a6@<X8>)
{
  if (a5)
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  else
  {
    v10 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v10);

    v8 = 14906;
    v9 = 0xE200000000000000;
  }

  sub_1BF399080();
  v11 = sub_1BF4E9134();
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v17 = sub_1BF4E76B4();
  v18 = v15;
  MEMORY[0x1BFB58C90](14906, 0xE200000000000000);
  MEMORY[0x1BFB58C90](v11, v13);

  MEMORY[0x1BFB58C90](v8, v9);

  result = (*(*(v14 - 8) + 8))(a1, v14);
  *a6 = v17;
  a6[1] = v18;
  return result;
}

ChronoKit::DuetWidgetBudgetIdentity __swiftcall DuetWidgetBudgetIdentity.init(forStackSuggestionIdentifier:)(Swift::String forStackSuggestionIdentifier)
{
  v2 = v1;
  sub_1BF399080();
  v3 = sub_1BF4E9134();
  v5 = v4;

  strcpy(v10, "suggestion::");
  BYTE5(v10[1]) = 0;
  HIWORD(v10[1]) = -5120;
  MEMORY[0x1BFB58C90](v3, v5);

  v8 = v10[1];
  *v2 = v10[0];
  v2[1] = v8;
  result.identifier._object = v7;
  result.identifier._countAndFlagsBits = v6;
  return result;
}

void DuetWidgetBudgetIdentity.init(for:)(char **a1@<X0>, uint64_t *a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - v5;
  v7 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v9 = a1[3];
  v11 = *MEMORY[0x1E69941B8];
  swift_beginAccess();
  (*(v4 + 16))(v6, &v7[v11], v3);
  if (v9)
  {
    v12 = [v9 stableHash];
    v29 = 14906;
    v30 = 0xE200000000000000;
    v27 = v12;
    v13 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v13);

    v14 = v30;
    v23 = v29;
  }

  else
  {
    v23 = 0;
    v14 = 0xE000000000000000;
  }

  v29 = v8;
  v30 = v10;
  v27 = 14906;
  v28 = 0xE200000000000000;
  v25 = 0x413325413325;
  v26 = 0xE600000000000000;
  sub_1BF399080();
  v15 = sub_1BF4E9134();
  v17 = v16;
  v29 = sub_1BF4E76B4();
  v30 = v18;
  MEMORY[0x1BFB58C90](14906, 0xE200000000000000);
  MEMORY[0x1BFB58C90](v15, v17);

  MEMORY[0x1BFB58C90](v23, v14);

  v19 = v29;
  v20 = v30;
  (*(v4 + 8))(v6, v3);

  v21 = v24;
  *v24 = v19;
  v21[1] = v20;
}

void DuetWidgetBudgetIdentity.init(forViewConfiguration:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BF3B253C(a1);
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t static DuetWidgetBudgetIdentity.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1BF4E9734();
  }
}

uint64_t DuetWidgetBudgetIdentity.hashValue.getter(double a1)
{
  sub_1BF4E9804();
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF3F8BD8(double a1)
{
  sub_1BF4E9804();
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF3F8C2C(uint64_t a1, double a2)
{
  sub_1BF4E9804();
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

unint64_t sub_1BF3F8C78()
{
  result = qword_1EBDD8C38;
  if (!qword_1EBDD8C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8C38);
  }

  return result;
}

uint64_t sub_1BF3F8D20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v23 - v1;
  v3 = sub_1BF4E7194();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF3F927C(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1BF38C9B4(v2, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    if (qword_1EDC9D500 != -1)
    {
      swift_once();
    }

    v7 = sub_1BF4E7B54();
    __swift_project_value_buffer(v7, qword_1EDCA69A0);
    v8 = sub_1BF4E7B34();
    v9 = sub_1BF4E8E64();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BF389000, v8, v9, "Couldn't find nominated container data", v10, 2u);
      MEMORY[0x1BFB5A5D0](v10, -1, -1);
    }
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v11 = [objc_opt_self() defaultManager];
    sub_1BF4E7174();
    v12 = sub_1BF4E88E4();

    v13 = [v11 contentsAtPath_];

    if (v13)
    {
      v14 = sub_1BF4E71C4();
      v16 = v15;

      sub_1BF4E6F84();
      swift_allocObject();
      sub_1BF4E6F74();
      type metadata accessor for NominatedContainerPermissions();
      sub_1BF3F9A20();
      sub_1BF4E6F64();
      (*(v4 + 8))(v6, v3);

      sub_1BF3B03C0(v14, v16);
      v21 = *(v23[1] + 16);

      return v21;
    }

    if (qword_1EDC9D500 != -1)
    {
      swift_once();
    }

    v17 = sub_1BF4E7B54();
    __swift_project_value_buffer(v17, qword_1EDCA69A0);
    v18 = sub_1BF4E7B34();
    v19 = sub_1BF4E8E64();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1BF389000, v18, v19, "Couldn't load nominated container data", v20, 2u);
      MEMORY[0x1BFB5A5D0](v20, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1BF3F927C@<X0>(uint64_t a1@<X8>)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_1BF4E88E4();
  v5 = sub_1BF4E88E4();
  v6 = [v3 URLForResource:v4 withExtension:v5];

  if (v6)
  {
    sub_1BF4E7154();

    v7 = 0;
    v3 = v6;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_1BF4E7194();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

uint64_t sub_1BF3F93C0(double a1)
{
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](0);
  return sub_1BF4E9844();
}

uint64_t sub_1BF3F942C(uint64_t a1, double a2)
{
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](0);
  return sub_1BF4E9844();
}

uint64_t sub_1BF3F9488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001BLL && 0x80000001BF4F9A80 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1BF4E9734();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1BF3F951C(uint64_t a1)
{
  v2 = sub_1BF3F99CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF3F9558(uint64_t a1)
{
  v2 = sub_1BF3F99CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF3F9594()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BF3F95F0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8C48, &qword_1BF4ED6D0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF3F99CC();
  sub_1BF4E9864();
  v9[1] = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
  sub_1BF3F9A74(&qword_1EDC963E8, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  sub_1BF4E9674();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1BF3F9774(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8C40, &unk_1BF4ED6B0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF3F99CC();
  sub_1BF4E9854();
  if (v2)
  {
    type metadata accessor for NominatedContainerPermissions();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
    sub_1BF3F9A74(&qword_1EDC963E0, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1BF4E95B4();
    (*(v5 + 8))(v7, v4);
    *(v1 + 16) = v9[1];
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_1BF3F9950@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for NominatedContainerPermissions();
  v5 = swift_allocObject();
  result = sub_1BF3F9774(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_1BF3F99CC()
{
  result = qword_1EDC975A8[0];
  if (!qword_1EDC975A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC975A8);
  }

  return result;
}

unint64_t sub_1BF3F9A20()
{
  result = qword_1EDC97590;
  if (!qword_1EDC97590)
  {
    type metadata accessor for NominatedContainerPermissions();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC97590);
  }

  return result;
}

uint64_t sub_1BF3F9A74(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NominatedContainerPermissions.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for NominatedContainerPermissions.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_1BF3F9BC4()
{
  result = qword_1EBDD8C50[0];
  if (!qword_1EBDD8C50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBDD8C50);
  }

  return result;
}

unint64_t sub_1BF3F9C1C()
{
  result = qword_1EDC97598;
  if (!qword_1EDC97598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC97598);
  }

  return result;
}

unint64_t sub_1BF3F9C74()
{
  result = qword_1EDC975A0;
  if (!qword_1EDC975A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC975A0);
  }

  return result;
}

uint64_t sub_1BF3F9CC8(uint64_t a1, double a2)
{
  v3 = sub_1BF4E7194();
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1, v4);
  return sub_1BF3F9E1C(v6);
}

uint64_t sub_1BF3F9D94@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EBDE1E50;
  swift_beginAccess();
  v4 = sub_1BF4E7194();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1BF3F9E1C(uint64_t a1)
{
  v3 = qword_1EBDE1E50;
  swift_beginAccess();
  v4 = sub_1BF4E7194();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t BaseDirectoryCacheKeyProvider.__allocating_init(subsystem:in:fileManager:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  BaseDirectoryCacheKeyProvider.init(subsystem:in:fileManager:)(a1, a2, a3, a4, v9);
  return v8;
}

void *BaseDirectoryCacheKeyProvider.init(subsystem:in:fileManager:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v32[1] = a1;
  v6 = v5;
  v36 = *MEMORY[0x1E69E9840];
  v9 = *v5;
  v10 = sub_1BF4E7194();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v32 - v16;
  *&v35[0] = 0;
  v33 = a4;
  v18 = [a4 URLForDirectory:a3 inDomain:1 appropriateForURL:0 create:1 error:{v35, v15}];
  v19 = *&v35[0];
  if (v18)
  {
    v20 = v18;
    sub_1BF4E7154();
    v21 = v19;

    sub_1BF4E70F4();

    v22 = *(v11 + 8);
    v22(v13, v10);
    v23 = qword_1EBDE1E50;
    (*(v11 + 32))(v6 + qword_1EBDE1E50, v17, v10);
    swift_beginAccess();
    (*(v11 + 16))(v13, v6 + v23, v10);
    v24 = sub_1BF4E7094();
    v22(v13, v10);
    v34 = 0;
    v25 = v33;
    v26 = [v33 createDirectoryAtURL:v24 withIntermediateDirectories:1 attributes:0 error:&v34];

    if (v26)
    {
      v27 = v34;
    }

    else
    {
      v30 = v34;
      sub_1BF4E6FF4();

      swift_willThrow();
    }
  }

  else
  {
    v28 = *&v35[0];

    sub_1BF4E6FF4();

    swift_willThrow();
    v29 = *(v9 + 96);
    v35[0] = *(v9 + 80);
    v35[1] = v29;
    type metadata accessor for BaseDirectoryCacheKeyProvider(0, v35);
    swift_deallocPartialClassInstance();
  }

  return v6;
}

uint64_t BaseDirectoryCacheKeyProvider.__allocating_init(cacheURL:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = qword_1EBDE1E50;
  v4 = sub_1BF4E7194();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t BaseDirectoryCacheKeyProvider.init(cacheURL:)(uint64_t a1, double a2)
{
  v4 = qword_1EBDE1E50;
  v5 = sub_1BF4E7194();
  (*(*(v5 - 8) + 32))(v2 + v4, a1, v5);
  return v2;
}

uint64_t sub_1BF3FA3C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *MEMORY[0x1E69941A8]);
  swift_beginAccess();
  if (v3[1])
  {
    v14 = *v3;
    v15 = v3[1];

    MEMORY[0x1BFB58C90](47, 0xE100000000000000);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
    v4 = sub_1BF4E76B4();
    v6 = v5;
    swift_endAccess();
    MEMORY[0x1BFB58C90](v4, v6);

    v8 = v14;
    v9 = v15;
  }

  else
  {
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
    v10 = sub_1BF4E76B4();
    v9 = v11;
    swift_endAccess();
    v8 = v10;
  }

  sub_1BF3FA8C0(v8, v9, v7);

  v12 = sub_1BF4E7194();
  return (*(*(v12 - 8) + 56))(a2, 0, 1, v12);
}

uint64_t sub_1BF3FA560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v28 = v4;
  v29 = a2;
  v5 = *(v4 + 80);
  v26 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = sub_1BF4E7194();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v26 - v17;
  v19 = *(*(v4 + 96) + 16);
  v27 = a1;
  v20 = v19(v5, v16);
  sub_1BF3FA3C4(v20, v10);

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1BF3FA9B4(v10);
    return (*(*(*(v28 + 88) - 8) + 56))(v29, 1, 1);
  }

  else
  {
    (*(v12 + 32))(v18, v10, v11);
    v22 = v28;
    v23 = *(v28 + 88);
    (*(v12 + 16))(v14, v18, v11);
    (*(v26 + 16))(v7, v27, v5);
    v24 = *(*(v22 + 104) + 16);
    v25 = v29;
    v24(v14, v7, v23);
    (*(v12 + 8))(v18, v11);
    return (*(*(v23 - 8) + 56))(v25, 0, 1);
  }
}

uint64_t sub_1BF3FA8C0(uint64_t a1, uint64_t a2, double a3)
{
  v3 = sub_1BF4E7194();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF3F9D94(v6);
  sub_1BF4E70F4();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1BF3FA9B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t BaseDirectoryCacheKeyProvider.deinit(double a1)
{
  v2 = qword_1EBDE1E50;
  v3 = sub_1BF4E7194();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  return v1;
}

uint64_t BaseDirectoryCacheKeyProvider.__deallocating_deinit(double a1)
{
  v2 = qword_1EBDE1E50;
  v3 = sub_1BF4E7194();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF3FAB68(uint64_t a1, double a2)
{
  result = sub_1BF4E7194();
  if (v3 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t RelevanceCacheManager.__allocating_init(cacheKeyProvider:descriptorProvider:relevanceCacheUrl:)(void *a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  RelevanceCacheManager.init(cacheKeyProvider:descriptorProvider:relevanceCacheUrl:)(a1, a2, a3);
  return v6;
}

uint64_t RelevanceCacheManager.init(cacheKeyProvider:descriptorProvider:relevanceCacheUrl:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v33[1] = *MEMORY[0x1E69E9840];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - v9;
  v11 = sub_1BF4E7194();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v4 + OBJC_IVAR____TtC9ChronoKit21RelevanceCacheManager_relevanceCache) = 0;
  sub_1BF38E49C(a1, v4 + 112);
  sub_1BF38E49C(a2, v4 + 152);
  v32 = a3;
  sub_1BF3E90C8(a3, v10);
  v15 = *(v12 + 48);
  if (v15(v10, 1, v11) == 1)
  {
    v16 = CHSWidgetRelevanceServiceCacheDirectory();
    v30 = v4;
    v17 = a2;
    v18 = a1;
    v19 = v16;
    sub_1BF4E7154();

    a1 = v18;
    a2 = v17;
    v4 = v30;
    if (v15(v10, 1, v11) != 1)
    {
      sub_1BF38C9B4(v10, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    }
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
  }

  (*(v12 + 32))(v4 + OBJC_IVAR____TtC9ChronoKit21RelevanceCacheManager_relevanceCacheURL, v14, v11);
  v20 = [objc_opt_self() defaultManager];
  v21 = sub_1BF4E7094();
  v33[0] = 0;
  v22 = [v20 createDirectoryAtURL:v21 withIntermediateDirectories:1 attributes:0 error:v33];

  if ((v22 & 1) == 0)
  {
    v27 = v33[0];
    sub_1BF4E6FF4();

    swift_willThrow();
    goto LABEL_9;
  }

  v23 = v33[0];
  v24 = v31;
  v25 = sub_1BF3FBE24();
  if (v24)
  {
LABEL_9:

    sub_1BF38C9B4(v32, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    __swift_destroy_boxed_opaque_existential_1Tm(a2);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return v4;
  }

  v26 = v25;
  sub_1BF38C9B4(v32, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *(v4 + OBJC_IVAR____TtC9ChronoKit21RelevanceCacheManager_relevanceCache) = v26;

  return v4;
}

uint64_t sub_1BF3FB10C(void *a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AF8, &qword_1BF4EC370);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v39 - v4;
  v6 = sub_1BF4E7194();
  v43 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v39 - v10;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - v13;
  v15 = [a1 kind];
  v16 = sub_1BF4E8914();
  v18 = v17;

  v44 = v14;
  v19 = v46;
  sub_1BF3FB57C(a1, v14);
  if (v19)
  {
  }

  else
  {
    v40 = v16;
    v41 = v8;
    v46 = v18;
    v42 = v5;
    sub_1BF4E7134();
    v20 = objc_opt_self();
    v21 = [v20 defaultManager];
    v22 = sub_1BF4E7094();
    *&v47 = 0;
    v23 = [v21 createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:0 error:&v47];

    v24 = v47;
    if (v23)
    {
      v25 = v43;
      v26 = v41;
      v27 = v20;
      v28 = v44;
      (*(v43 + 16))(v41, v44, v6);
      v29 = sub_1BF4E8424();
      v30 = v42;
      (*(*(v29 - 8) + 56))(v42, 1, 1, v29);
      v31 = v24;
      v32 = [v27 defaultManager];
      v48 = sub_1BF3901C0(0, &qword_1EDC96398, 0x1E696AC08);
      v49 = &off_1F3DF3DC0;
      *&v47 = v32;
      v33 = *(v25 + 8);
      v33(v45, v6);
      v33(v28, v6);
      type metadata accessor for DataProtectedArchiveFilePromise(0);
      v1 = swift_allocObject();
      v34 = OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_intermediates;
      v35 = type metadata accessor for DataProtectedArchiveFilePromise.Intermediates(0);
      (*(*(v35 - 8) + 56))(v1 + v34, 1, 1, v35);
      *(v1 + OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise__needsCleanup) = 0;
      v36 = v46;
      *(v1 + 16) = v40;
      *(v1 + 24) = v36;
      (*(v25 + 32))(v1 + OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_destination, v26, v6);
      sub_1BF38E610(&v47, v1 + 32);
      sub_1BF3C846C(v30, v1 + OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_protectionLevel);
    }

    else
    {
      v37 = v47;

      sub_1BF4E6FF4();

      swift_willThrow();
      v1 = *(v43 + 8);
      (v1)(v45, v6);
      (v1)(v44, v6);
    }
  }

  return v1;
}

uint64_t sub_1BF3FB57C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v4 = sub_1BF4E7AD4();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BF4E7194();
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1BF4E6E14();
  v8 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  v17 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  v18 = [a1 extensionIdentity];
  (*(v17 + 48))();

  v19 = [a1 kind];
  v20 = sub_1BF4E8914();
  v22 = v21;

  v23 = sub_1BF39DC9C(0x32uLL, v20, v22);
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v30 = MEMORY[0x1BFB58C30](v23, v25, v27, v29);
  v32 = v31;

  v49 = v30;
  v50 = v32;
  sub_1BF4E6E04();
  sub_1BF399080();
  sub_1BF4E9144();
  v34 = v33;
  (*(v8 + 8))(v10, v51);

  if (!v34)
  {
    v37 = 2;
    goto LABEL_5;
  }

  sub_1BF3E90C8(v16, v13);
  v36 = v47;
  v35 = v48;
  if ((*(v47 + 48))(v13, 1, v48) == 1)
  {

    sub_1BF38C9B4(v13, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    v37 = 1;
LABEL_5:
    sub_1BF4003A4();
    swift_allocError();
    *v38 = v37;
    swift_willThrow();
    return sub_1BF38C9B4(v16, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
  }

  v40 = v43;
  (*(v36 + 32))(v43, v13, v35);
  (*(v36 + 16))(v46, v40, v35);
  v41 = v42;
  sub_1BF4E7AC4();
  sub_1BF4E70E4();
  (*(v44 + 8))(v41, v45);
  sub_1BF4E70B4();

  sub_1BF4E70C4();
  (*(v36 + 8))(v40, v35);
  return sub_1BF38C9B4(v16, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
}

void sub_1BF3FBA60(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  sub_1BF3FCA18(sub_1BF3FBF20, v2);
}

void sub_1BF3FBAA0(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  v7 = sub_1BF4E71A4();
  if (v4)
  {
    sub_1BF4003A4();
    swift_allocError();
    *v13 = v4;
LABEL_4:
    swift_willThrow();
    return;
  }

  v9 = v7;
  v10 = v8;
  sub_1BF3901C0(0, &qword_1EDC96370, 0x1E696ACD0);
  sub_1BF4E8234();
  v11 = sub_1BF4E8EB4();
  sub_1BF3B03C0(v9, v10);
  if (!v11)
  {
    sub_1BF4003A4();
    swift_allocError();
    *v15 = 0;
    goto LABEL_4;
  }

  if (*(a1 + OBJC_IVAR____TtC9ChronoKit21RelevanceCacheManager_relevanceCache))
  {
    MEMORY[0x1EEE9AC00](v12);
    v14 = v11;

    sub_1BF4E7634();

    v16 = sub_1BF4E8214();
    if (v16 >> 62)
    {
      v17 = sub_1BF4E9204();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *a4 = v17;
  }

  else
  {
    __break(1u);
  }
}

void sub_1BF3FBC90(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BF4E7334();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BF4E8224();
  sub_1BF4E7324();
  sub_1BF4E72C4();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  sub_1BF4E8214();
  v10 = objc_allocWithZone(MEMORY[0x1E6994410]);
  sub_1BF3901C0(0, &qword_1EDC96358, 0x1E69943F8);
  v11 = sub_1BF4E8B84();

  v12 = [v10 initWithWidgetRelevanceKey:a2 supportsBackgroundRefresh:(v7 & 1) == 0 lastRelevanceUpdate:v11 relevances:v9];

  sub_1BF4E7814();
}

uint64_t sub_1BF3FBE24()
{
  v1 = v0;
  if (qword_1EDC9D458 != -1)
  {
    swift_once();
  }

  v2 = sub_1BF4E7B54();
  __swift_project_value_buffer(v2, qword_1EDCA6880);
  v3 = sub_1BF4E7B34();
  v4 = sub_1BF4E8E84();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BF389000, v3, v4, "Loading RelevanceCache", v5, 2u);
    MEMORY[0x1BFB5A5D0](v5, -1, -1);
  }

  return sub_1BF3FBF40(v6, v1);
}

uint64_t sub_1BF3FBF40(uint64_t a1, uint64_t a2)
{
  v83 = a2;
  v68 = a1;
  v69 = sub_1BF4E6D54();
  v2 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v84 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v86 = &v63 - v5;
  v6 = sub_1BF4E6D64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v64 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v63 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v80 = &v63 - v13;
  v14 = sub_1BF4E7744();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = OBJC_IVAR____TtC9ChronoKit21RelevanceCacheManager_relevanceCacheURL;
  v81 = sub_1BF4E7654();
  v18 = 0;
  v77 = (v15 + 88);
  v76 = *MEMORY[0x1E6994118];
  v67 = (v15 + 8);
  v71 = (v7 + 32);
  v63 = v7;
  v72 = (v7 + 8);
  *&v19 = 138543362;
  v65 = v19;
  *&v19 = 138543618;
  v66 = v19;
  v73 = v11;
  v74 = v6;
  v79 = v14;
  v75 = v17;
  v70 = (v2 + 8);
  while (1)
  {
    sub_1BF4E7164();
    v20 = v85;
    v21 = sub_1BF4E7664();
    if (!v20)
    {
      break;
    }

    v89 = v20;
    v22 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD91C0, &unk_1BF4ED510);
    if (swift_dynamicCast())
    {
      v23 = (*v77)(v17, v14);
      if (v23 == v76)
      {

        if (qword_1EDC9D458 != -1)
        {
          swift_once();
        }

        v24 = sub_1BF4E7B54();
        __swift_project_value_buffer(v24, qword_1EDCA6880);
        v25 = sub_1BF4E7B34();
        v26 = sub_1BF4E8E64();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_1BF389000, v25, v26, "RelevanceCache corruption detected, rebuilding cache", v27, 2u);
          v28 = v27;
          v6 = v74;
          MEMORY[0x1BFB5A5D0](v28, -1, -1);
        }

        sub_1BF3FD4AC();
        v85 = 0;

        goto LABEL_4;
      }

      (*v67)(v17, v14);
    }

    v89 = v20;
    v29 = v20;
    v30 = v80;
    v31 = swift_dynamicCast();
    v85 = 0;
    if (v31)
    {
      v32 = v69;
      v78 = v21;

      v33 = v73;
      (*v71)(v73, v30, v6);
      sub_1BF4003F8(&qword_1EDC9F110, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
      sub_1BF4E6FC4();
      v34 = v84;
      sub_1BF4E6CF4();
      sub_1BF4003F8(&qword_1EDC9F118, MEMORY[0x1E6967E70], MEMORY[0x1E6967E88]);
      sub_1BF4E8B54();
      sub_1BF4E8B54();
      v35 = v86;
      v36 = v6;
      v37 = *v70;
      (*v70)(v34, v32);
      v37(v35, v32);
      if (v88 == v87 || (sub_1BF4E6FC4(), sub_1BF4E6D04(), sub_1BF4E8B54(), sub_1BF4E8B54(), v37(v84, v32), v37(v86, v32), v88 == v87))
      {
        if (qword_1EDC9D458 != -1)
        {
          swift_once();
        }

        v48 = sub_1BF4E7B54();
        __swift_project_value_buffer(v48, qword_1EDCA6880);
        v49 = v64;
        v51 = v73;
        v50 = v74;
        (*(v63 + 16))(v64, v73, v74);
        v52 = sub_1BF4E7B34();
        v53 = sub_1BF4E8E64();
        v54 = os_log_type_enabled(v52, v53);
        v21 = v78;
        if (v54)
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          *v55 = v65;
          sub_1BF4E6CD4();
          v57 = _swift_stdlib_bridgeErrorToNSError();
          v58 = v49;
          v59 = *v72;
          (*v72)(v58, v50);
          *(v55 + 4) = v57;
          *v56 = v57;
          _os_log_impl(&dword_1BF389000, v52, v53, "RelevanceCache failed due to access permission %{public}@, rethrowing now", v55, 0xCu);
          sub_1BF38C9B4(v56, &unk_1EBDD9260, &qword_1BF4EC380);
          v60 = v56;
          v51 = v73;
          MEMORY[0x1BFB5A5D0](v60, -1, -1);
          MEMORY[0x1BFB5A5D0](v55, -1, -1);
        }

        else
        {

          v61 = v49;
          v59 = *v72;
          (*v72)(v61, v50);
        }

        sub_1BF4E6CD4();
        swift_willThrow();
        v59(v51, v50);

        break;
      }

      (*v72)(v33, v36);

      v6 = v36;
      v21 = v78;
      v14 = v79;
      v17 = v75;
    }

    else
    {

      if (qword_1EDC9D458 != -1)
      {
        swift_once();
      }

      v38 = sub_1BF4E7B54();
      __swift_project_value_buffer(v38, qword_1EDCA6880);
      v39 = v20;
      v40 = sub_1BF4E7B34();
      v41 = sub_1BF4E8E64();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = v66;
        v44 = v20;
        v45 = _swift_stdlib_bridgeErrorToNSError();
        *(v42 + 4) = v45;
        *v43 = v45;
        *(v42 + 12) = 2050;
        *(v42 + 14) = v18;
        _os_log_impl(&dword_1BF389000, v40, v41, "RelevanceCache failed to load with error %{public}@, retry %{public}ld", v42, 0x16u);
        sub_1BF38C9B4(v43, &unk_1EBDD9260, &qword_1BF4EC380);
        MEMORY[0x1BFB5A5D0](v43, -1, -1);
        v46 = v42;
        v6 = v74;
        MEMORY[0x1BFB5A5D0](v46, -1, -1);
      }

      else
      {
      }

      v14 = v79;
    }

LABEL_4:
    if (++v18 == 3)
    {
      sub_1BF4003A4();
      swift_allocError();
      *v47 = 3;
      swift_willThrow();
      break;
    }
  }

  return v21;
}

void sub_1BF3FCA18(void (*a1)(uint64_t *__return_ptr), uint64_t a2)
{
  v3 = v2;
  v83 = a2;
  v84 = a1;
  v71 = sub_1BF4E6D54();
  v4 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v85 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v65 - v7;
  v9 = sub_1BF4E6D64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v66 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v65 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v82 = &v65 - v16;
  v17 = sub_1BF4E7744();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 0;
  v76 = (v21 + 88);
  v69 = (v21 + 8);
  v75 = *MEMORY[0x1E6994118];
  v72 = (v10 + 32);
  v65 = v10;
  v73 = (v10 + 8);
  *&v22 = 138543362;
  v67 = v22;
  *&v22 = 138543618;
  v68 = v22;
  v79 = v9;
  v80 = v19;
  v70 = v14;
  v74 = v8;
  v81 = v23;
  v78 = (v4 + 8);
  while (1)
  {
    v30 = v3;
    v84(&v89);
    if (!v3)
    {
      break;
    }

    v3 = 0;
    v88 = v30;
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD91C0, &unk_1BF4ED510);
    v32 = v81;
    v33 = swift_dynamicCast();
    v34 = v82;
    if (v33)
    {
      v35 = (*v76)(v19, v32);
      if (v35 == v75)
      {

        if (qword_1EDC9D458 != -1)
        {
          swift_once();
        }

        v36 = sub_1BF4E7B54();
        __swift_project_value_buffer(v36, qword_1EDCA6880);
        v37 = sub_1BF4E7B34();
        v38 = sub_1BF4E8E64();
        v39 = os_log_type_enabled(v37, v38);
        v19 = v80;
        if (v39)
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&dword_1BF389000, v37, v38, "RelevanceCache corruption detected, rebuilding cache", v40, 2u);
          v41 = v40;
          v8 = v74;
          MEMORY[0x1BFB5A5D0](v41, -1, -1);
        }

        sub_1BF3FD4AC();
        v3 = 0;

        goto LABEL_3;
      }

      (*v69)(v19, v32);
    }

    v88 = v30;
    v42 = v30;
    v43 = v79;
    if (swift_dynamicCast())
    {
      v77 = 0;
      v44 = v71;

      (*v72)(v14, v34, v43);
      sub_1BF4003F8(&qword_1EDC9F110, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
      sub_1BF4E6FC4();
      v45 = v85;
      sub_1BF4E6CF4();
      sub_1BF4003F8(&qword_1EDC9F118, MEMORY[0x1E6967E70], MEMORY[0x1E6967E88]);
      sub_1BF4E8B54();
      sub_1BF4E8B54();
      v46 = v45;
      v47 = v14;
      v48 = *v78;
      (*v78)(v46, v44);
      v48(v8, v44);
      if (v87 == v86 || (sub_1BF4E6FC4(), sub_1BF4E6D04(), sub_1BF4E8B54(), sub_1BF4E8B54(), v48(v85, v44), v48(v8, v44), v87 == v86))
      {
        if (qword_1EDC9D458 != -1)
        {
          swift_once();
        }

        v55 = sub_1BF4E7B54();
        __swift_project_value_buffer(v55, qword_1EDCA6880);
        v56 = v66;
        v57 = v79;
        (*(v65 + 16))(v66, v70, v79);
        v58 = sub_1BF4E7B34();
        v59 = sub_1BF4E8E64();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          *v60 = v67;
          sub_1BF4E6CD4();
          v62 = _swift_stdlib_bridgeErrorToNSError();
          v63 = *v73;
          (*v73)(v56, v57);
          *(v60 + 4) = v62;
          *v61 = v62;
          _os_log_impl(&dword_1BF389000, v58, v59, "RelevanceCache failed due to access permission %{public}@, rethrowing now", v60, 0xCu);
          sub_1BF38C9B4(v61, &unk_1EBDD9260, &qword_1BF4EC380);
          MEMORY[0x1BFB5A5D0](v61, -1, -1);
          MEMORY[0x1BFB5A5D0](v60, -1, -1);
        }

        else
        {

          v63 = *v73;
          (*v73)(v56, v57);
        }

        v64 = v70;
        sub_1BF4E6CD4();
        swift_willThrow();
        v63(v64, v57);

        return;
      }

      (*v73)(v47, v43);

      v14 = v47;
      v3 = v77;
      v19 = v80;
    }

    else
    {

      if (qword_1EDC9D458 != -1)
      {
        swift_once();
      }

      v49 = sub_1BF4E7B54();
      __swift_project_value_buffer(v49, qword_1EDCA6880);
      v50 = v30;
      v51 = sub_1BF4E7B34();
      v52 = sub_1BF4E8E64();

      v53 = os_log_type_enabled(v51, v52);
      v19 = v80;
      if (v53)
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = v68;
        v26 = v30;
        v27 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 4) = v27;
        *v25 = v27;
        *(v24 + 12) = 2050;
        *(v24 + 14) = v20;
        _os_log_impl(&dword_1BF389000, v51, v52, "RelevanceCache failed to load with error %{public}@, retry %{public}ld", v24, 0x16u);
        sub_1BF38C9B4(v25, &unk_1EBDD9260, &qword_1BF4EC380);
        v28 = v25;
        v8 = v74;
        MEMORY[0x1BFB5A5D0](v28, -1, -1);
        v29 = v24;
        v14 = v70;
        MEMORY[0x1BFB5A5D0](v29, -1, -1);
      }

      else
      {
      }
    }

LABEL_3:
    if (++v20 == 3)
    {
      sub_1BF4003A4();
      swift_allocError();
      *v54 = 3;
      swift_willThrow();
      return;
    }
  }
}

uint64_t sub_1BF3FD4AC()
{
  v2 = v0[22];
  v3 = v0[23];
  __swift_project_boxed_opaque_existential_1(v0 + 19, v2);
  v4 = (*(v3 + 24))(v2, v3);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    goto LABEL_15;
  }

  v6 = *(v4 + 16);
  MEMORY[0x1EEE9AC00](v4);
  sub_1BF3901C0(0, &unk_1EDC9D6D8, 0x1E6994388);
  KeyPath = swift_getKeyPath();

  sub_1BF3FEE8C(v6, KeyPath);
  v9 = v8;

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v10 = sub_1BF4E9204();
  if (!v10)
  {
LABEL_14:

LABEL_15:
    sub_1BF3FD730(v5);
  }

LABEL_4:
  v18 = v5;
  result = sub_1BF4E93A4();
  if ((v10 & 0x8000000000000000) == 0)
  {
    v17 = v1;
    v12 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1BFB59570](v12, v9);
      }

      else
      {
        v13 = *(v9 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = [v13 extensionIdentity];
      v16 = [v14 kind];
      if (!v16)
      {
        sub_1BF4E8914();
        v16 = sub_1BF4E88E4();
      }

      ++v12;
      [objc_allocWithZone(MEMORY[0x1E6994408]) initWithExtensionIdentity:v15 kind:v16];

      sub_1BF4E9374();
      sub_1BF4E93B4();
      sub_1BF4E93C4();
      sub_1BF4E9384();
    }

    while (v10 != v12);

    v5 = v18;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

void sub_1BF3FD730(unint64_t a1)
{
  v3 = v2;
  v30[1] = *MEMORY[0x1E69E9840];
  if (qword_1EDC9D458 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v29 = v1;
    v5 = sub_1BF4E7B54();
    __swift_project_value_buffer(v5, qword_1EDCA6880);
    v6 = sub_1BF4E7B34();
    v7 = sub_1BF4E8E64();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1BF389000, v6, v7, "RelevanceCache rebuilding...", v8, 2u);
      MEMORY[0x1BFB5A5D0](v8, -1, -1);
    }

    v9 = objc_opt_self();
    v10 = [v9 defaultManager];
    v11 = sub_1BF4E7094();
    v30[0] = 0;
    v12 = [v10 removeItemAtURL:v11 error:v30];

    v13 = v30[0];
    if (!v12)
    {
      break;
    }

    v14 = v30[0];
    v15 = [v9 defaultManager];
    v16 = sub_1BF4E7094();
    v30[0] = 0;
    v17 = [v15 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:v30];

    v13 = v30[0];
    if (!v17)
    {
      break;
    }

    sub_1BF4E7654();
    v18 = v13;
    sub_1BF4E7164();
    v19 = sub_1BF4E7664();
    v1 = v3;
    if (v3)
    {
      return;
    }

    *(v29 + OBJC_IVAR____TtC9ChronoKit21RelevanceCacheManager_relevanceCache) = v19;

    if (a1 >> 62)
    {
      v3 = sub_1BF4E9204();
      if (!v3)
      {
        return;
      }
    }

    else
    {
      v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v3)
      {
        return;
      }
    }

    v20 = 0;
    v21 = a1 & 0xC000000000000001;
    v22 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v21)
      {
        v23 = a1;
        v24 = MEMORY[0x1BFB59570](v20, a1);
      }

      else
      {
        if (v20 >= *(v22 + 16))
        {
          goto LABEL_21;
        }

        v23 = a1;
        v24 = *(a1 + 8 * v20 + 32);
      }

      v25 = v24;
      a1 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v26 = MEMORY[0x1BFB59CC0]();
      sub_1BF3FDA6C(v29, v25);
      v1 = 0;
      objc_autoreleasePoolPop(v26);

      ++v20;
      v27 = a1 == v3;
      a1 = v23;
      if (v27)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
  }

  v28 = v13;
  sub_1BF4E6FF4();

  swift_willThrow();
}

void sub_1BF3FDA6C(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v47 - v6;
  v8 = sub_1BF4E7194();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  sub_1BF3FB57C(a2, v7);
  if (v2)
  {

    (*(v9 + 56))(v7, 1, 1, v8);
    sub_1BF38C9B4(v7, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    return;
  }

  v48 = a1;
  v49 = v11;
  v50 = 0;
  (*(v9 + 56))(v7, 0, 1, v8);
  (*(v9 + 32))(v14, v7, v8);
  if (qword_1EDC9D458 != -1)
  {
    swift_once();
  }

  v15 = sub_1BF4E7B54();
  v16 = __swift_project_value_buffer(v15, qword_1EDCA6880);
  v17 = a2;
  v18 = sub_1BF4E7B34();
  v19 = sub_1BF4E8E64();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138543362;
    *(v20 + 4) = v17;
    *v21 = v17;
    v22 = v17;
    _os_log_impl(&dword_1BF389000, v18, v19, "RelevanceCache rebuild insert %{public}@", v20, 0xCu);
    sub_1BF38C9B4(v21, &unk_1EBDD9260, &qword_1BF4EC380);
    MEMORY[0x1BFB5A5D0](v21, -1, -1);
    MEMORY[0x1BFB5A5D0](v20, -1, -1);
  }

  v23 = v50;
  v24 = sub_1BF4E71A4();
  if (v23)
  {
    sub_1BF4003A4();
    v30 = swift_allocError();
    *v31 = v23;
    v32 = v30;
    swift_willThrow();
    v50 = 0;
    v33 = v49;
  }

  else
  {
    v47 = v16;
    v26 = v24;
    v27 = v25;
    sub_1BF3901C0(0, &qword_1EDC96370, 0x1E696ACD0);
    sub_1BF4E8234();
    v28 = sub_1BF4E8EB4();
    sub_1BF3B03C0(v26, v27);
    if (v28)
    {
      if (*(v48 + OBJC_IVAR____TtC9ChronoKit21RelevanceCacheManager_relevanceCache))
      {
        MEMORY[0x1EEE9AC00](v29);
        *(&v47 - 2) = v17;
        *(&v47 - 1) = v28;
        v45 = v28;

        sub_1BF4E7634();

        if (sub_1BF4E8214() >> 62)
        {
          sub_1BF4E9204();
        }

        (*(v9 + 8))(v14, v8);
      }

      else
      {
        __break(1u);
      }

      return;
    }

    sub_1BF4003A4();
    v32 = swift_allocError();
    *v46 = 0;
    swift_willThrow();
    v50 = 0;
    v33 = v49;
  }

  (*(v9 + 16))(v33, v14, v8);
  v34 = sub_1BF4E7B34();
  v35 = sub_1BF4E8E64();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v49 = v32;
    v37 = v36;
    v48 = swift_slowAlloc();
    v51 = v48;
    *v37 = 136446210;
    sub_1BF4003F8(&qword_1EDC9F100, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v38 = sub_1BF4E96A4();
    v47 = v14;
    v40 = v39;
    v41 = *(v9 + 8);
    v41(v33, v8);
    v42 = sub_1BF38D65C(v38, v40, &v51);

    *(v37 + 4) = v42;
    _os_log_impl(&dword_1BF389000, v34, v35, "Failed to append %{public}s when rebuilding cache", v37, 0xCu);
    v43 = v48;
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    MEMORY[0x1BFB5A5D0](v43, -1, -1);
    MEMORY[0x1BFB5A5D0](v37, -1, -1);

    v41(v47, v8);
  }

  else
  {

    v44 = *(v9 + 8);
    v44(v33, v8);
    v44(v14, v8);
  }
}

void sub_1BF3FE0FC(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC9ChronoKit21RelevanceCacheManager_relevanceCache;
  if (*(v1 + OBJC_IVAR____TtC9ChronoKit21RelevanceCacheManager_relevanceCache))
  {

    v5 = sub_1BF4E7644();

    v6 = a1;
    sub_1BF3FF650(v5, v6);

    if (*(v2 + v3))
    {
      MEMORY[0x1EEE9AC00](v7);

      sub_1BF4E7634();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BF3FE1F8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BF4E91F4();
    sub_1BF3901C0(0, &qword_1EDC96330, 0x1E6994408);
    sub_1BF400254();
    sub_1BF4E8D64();
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    v6 = v19;
  }

  else
  {
    v7 = -1 << *(a2 + 32);
    v3 = a2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a2 + 56);

    v5 = 0;
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_1BF39A9CC(v2);
      return;
    }

    while (1)
    {
      sub_1BF4E7824();

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1BF4E9234())
      {
        sub_1BF3901C0(0, &qword_1EDC96330, 0x1E6994408);
        swift_dynamicCast();
        v14 = v20;
        v12 = v5;
        v13 = v6;
        if (v20)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = *(v3 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

char *sub_1BF3FE3E8(char *result)
{
  v3 = OBJC_IVAR____TtC9ChronoKit21RelevanceCacheManager_relevanceCache;
  if (!*(v1 + OBJC_IVAR____TtC9ChronoKit21RelevanceCacheManager_relevanceCache))
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;

  v5 = sub_1BF4E7644();

  v6 = sub_1BF3FFD20(v5, v4);

  v7 = *(v1 + v3);
  if (!v7)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  MEMORY[0x1EEE9AC00](result);

  sub_1BF4E7634();

  if (!v2)
  {
    v7 = sub_1BF3BC57C(v6, sub_1BF3BC668, sub_1BF438E1C);
  }

  return v7;
}

void sub_1BF3FE544(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BF4E91F4();
    sub_1BF3901C0(0, &qword_1EDC96330, 0x1E6994408);
    sub_1BF400254();
    sub_1BF4E8D64();
    v2 = v29;
    v4 = v30;
    v5 = v31;
    v6 = v32;
    v7 = v33;
  }

  else
  {
    v8 = -1 << *(a2 + 32);
    v4 = a2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a2 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  v27 = v4;
  while (v2 < 0)
  {
    if (!sub_1BF4E9234() || (sub_1BF3901C0(0, &qword_1EDC96330, 0x1E6994408), swift_dynamicCast(), v16 = v34, v14 = v6, v15 = v7, !v34))
    {
LABEL_22:
      sub_1BF39A9CC(v2);
      return;
    }

LABEL_18:
    v28 = v15;
    if (qword_1EDC9D458 != -1)
    {
      swift_once();
    }

    v17 = sub_1BF4E7B54();
    __swift_project_value_buffer(v17, qword_1EDCA6880);
    v18 = v16;
    v19 = sub_1BF4E7B34();
    v20 = sub_1BF4E8E64();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = v2;
      v23 = a1;
      v24 = swift_slowAlloc();
      *v21 = 138543362;
      *(v21 + 4) = v18;
      *v24 = v16;
      v25 = v18;
      _os_log_impl(&dword_1BF389000, v19, v20, "RelevanceCacheManager removing abandoned key %{public}@", v21, 0xCu);
      sub_1BF38C9B4(v24, &unk_1EBDD9260, &qword_1BF4EC380);
      v26 = v24;
      a1 = v23;
      v2 = v22;
      v4 = v27;
      MEMORY[0x1BFB5A5D0](v26, -1, -1);
      MEMORY[0x1BFB5A5D0](v21, -1, -1);
    }

    sub_1BF4E7824();
    v6 = v14;
    v11 = (v5 + 64) >> 6;
    v7 = v28;
  }

  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_14:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v2 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_22;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t RelevanceCacheManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 152));
  v1 = OBJC_IVAR____TtC9ChronoKit21RelevanceCacheManager_relevanceCacheURL;
  v2 = sub_1BF4E7194();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t RelevanceCacheManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 152));
  v1 = OBJC_IVAR____TtC9ChronoKit21RelevanceCacheManager_relevanceCacheURL;
  v2 = sub_1BF4E7194();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1BF3FE9A0(void *a1, void *a2, uint64_t a3)
{
  type metadata accessor for RelevanceCacheManager(0);
  v6 = swift_allocObject();
  RelevanceCacheManager.init(cacheKeyProvider:descriptorProvider:relevanceCacheUrl:)(a1, a2, a3);
  return v6;
}

void sub_1BF3FEA28(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  sub_1BF3FCA18(sub_1BF40058C, v2);
}

void *sub_1BF3FEAB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1BF4387DC(*(a1 + 16), 0);

  v4 = sub_1BF438A7C(&v6, (v3 + 4), v1, a1);

  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

unint64_t *sub_1BF3FEB64(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
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

    v8 = a4;
    sub_1BF3FF224(v7, a2, a3, v8);
    v10 = v9;

    return v10;
  }

  return result;
}

unint64_t *sub_1BF3FEBFC(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
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

    sub_1BF3FF8B8(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_1BF3FEC98(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8CE0, &qword_1BF4ED968);
  result = sub_1BF4E92B4();
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
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_1BF4E9094();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_1BF3FEE8C(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v39 = v6;
  v40 = v7;
  v37 = v2;
  while (1)
  {
    v10 = v9;
    if (!v5)
    {
      while (1)
      {
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v11 >= v6)
        {
          goto LABEL_39;
        }

        v5 = *(v2 + 8 * v11);
        ++v8;
        if (v5)
        {
          v8 = v11;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      return;
    }

LABEL_10:
    v12 = (v8 << 9) | (8 * __clz(__rbit64(v5)));
    v13 = *(*(v7 + 56) + v12);
    v44[0] = *(*(v7 + 48) + v12);
    v44[1] = v13;
    v14 = v44[0];

    swift_getAtKeyPath();

    v15 = v45 >> 62;
    v43 = v45;
    v16 = v45 >> 62 ? sub_1BF4E9204() : *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v17 = v10 >> 62;
    v42 = v16;
    if (v10 >> 62)
    {
      break;
    }

    v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v19 = v18 + v16;
    if (__OFADD__(v18, v16))
    {
      goto LABEL_38;
    }

LABEL_14:
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v17)
      {
LABEL_20:
        sub_1BF4E9204();
        v22 = v43;
      }

      else
      {
LABEL_19:
        v22 = v43;
      }

      v20 = sub_1BF4E9324();
      v21 = v20 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_22;
    }

    if (v17)
    {
      goto LABEL_20;
    }

    v20 = v10;
    v21 = v10 & 0xFFFFFFFFFFFFFF8;
    if (v19 > *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_19;
    }

    v22 = v43;
LABEL_22:
    v23 = *(v21 + 16);
    v24 = *(v21 + 24);
    v41 = v20;
    if (v15)
    {
      v26 = v21;
      v27 = sub_1BF4E9204();
      v21 = v26;
      v25 = v27;
    }

    else
    {
      v25 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v25)
    {
      if (((v24 >> 1) - v23) < v42)
      {
        goto LABEL_42;
      }

      v28 = v21 + 8 * v23 + 32;
      v38 = v21;
      if (v15)
      {
        if (v25 < 1)
        {
          goto LABEL_44;
        }

        sub_1BF400340();
        for (i = 0; i != v25; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8CE8, &unk_1BF4ED970);
          v30 = sub_1BF3E20B0(v44, i, v22);
          v32 = *v31;
          (v30)(v44, 0);
          v22 = v43;
          *(v28 + 8 * i) = v32;
        }
      }

      else
      {
        sub_1BF3901C0(0, &unk_1EDC9D6D8, 0x1E6994388);
        swift_arrayInitWithCopy();
      }

      v9 = v41;
      v6 = v39;
      v7 = v40;
      v2 = v37;
      v5 &= v5 - 1;
      if (v42 >= 1)
      {
        v33 = *(v38 + 16);
        v34 = __OFADD__(v33, v42);
        v35 = v33 + v42;
        if (v34)
        {
          goto LABEL_43;
        }

        *(v38 + 16) = v35;
      }
    }

    else
    {

      v5 &= v5 - 1;
      v6 = v39;
      v7 = v40;
      v9 = v41;
      if (v42 > 0)
      {
        goto LABEL_41;
      }
    }
  }

  v36 = sub_1BF4E9204();
  v19 = v36 + v42;
  if (!__OFADD__(v36, v42))
  {
    goto LABEL_14;
  }

LABEL_38:
  __break(1u);
LABEL_39:
}

void sub_1BF3FF224(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a2;
  v22 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(*(a3 + 48) + 8 * v14);
    sub_1BF3901C0(0, &qword_1EDC9FDA8, 0x1E69E58C0);
    v16 = v15;
    v17 = [v16 extensionIdentity];
    v18 = sub_1BF4E90A4();

    if (v18)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:

        sub_1BF3FEC98(a1, v20, v22, a3);
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

uint64_t sub_1BF3FF3A4(uint64_t a1, void *a2)
{
  v3 = v2;
  v32 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = a2;
  v31 = v9;
  if (v6 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v27 = v7;
    v28 = v3;
    v26[1] = v26;
    MEMORY[0x1EEE9AC00](v9);
    v29 = v26 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v29, v8);
    v30 = 0;
    v10 = 0;
    v3 = a1 + 56;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;
    while (v13)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v7 = v15 | (v10 << 6);
      v18 = *(*(a1 + 48) + 8 * v7);
      sub_1BF3901C0(0, &qword_1EDC9FDA8, 0x1E69E58C0);
      v19 = v18;
      v20 = [v19 extensionIdentity];
      v8 = sub_1BF4E90A4();

      if (v8)
      {
        *&v29[(v7 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v7;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
LABEL_16:
          v22 = sub_1BF3FEC98(v29, v27, v30, a1);

          return v22;
        }
      }
    }

    v16 = v10;
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v10 >= v14)
      {
        goto LABEL_16;
      }

      v17 = *(v3 + 8 * v10);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v24 = swift_slowAlloc();
  v25 = v31;
  v22 = sub_1BF3FEB64(v24, v7, a1, v25);

  MEMORY[0x1BFB5A5D0](v24, -1, -1);

  return v22;
}

uint64_t sub_1BF3FF650(uint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_1BF3FF3A4(a1, a2);
  }

  v2 = MEMORY[0x1E69E7CD0];
  v18 = MEMORY[0x1E69E7CD0];
  v3 = a2;
  sub_1BF4E91F4();
  if (sub_1BF4E9234())
  {
    sub_1BF3901C0(0, &qword_1EDC96330, 0x1E6994408);
    do
    {
      swift_dynamicCast();
      sub_1BF3901C0(0, &qword_1EDC9FDA8, 0x1E69E58C0);
      v4 = [v17 extensionIdentity];
      v5 = sub_1BF4E90A4();

      if (v5)
      {
        v6 = *(v2 + 16);
        if (*(v2 + 24) <= v6)
        {
          sub_1BF4AD82C(v6 + 1);
        }

        v2 = v18;
        result = sub_1BF4E9094();
        v8 = v18 + 56;
        v9 = -1 << *(v18 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v18 + 56 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v18 + 56 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v11 == v14;
            if (v11 == v14)
            {
              v11 = 0;
            }

            v13 |= v15;
            v16 = *(v8 + 8 * v11);
          }

          while (v16 == -1);
          v12 = __clz(__rbit64(~v16)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v18 + 48) + 8 * v12) = v17;
        ++*(v18 + 16);
      }

      else
      {
      }
    }

    while (sub_1BF4E9234());
  }

  return v2;
}

void sub_1BF3FF8B8(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v22 = 0;
  v23 = a4;
  v20 = a2;
  v21 = a1;
  v4 = 0;
  v24 = a3;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v25 = *(*(v24 + 48) + 8 * v13);
    MEMORY[0x1EEE9AC00](a1);
    v19[2] = &v25;
    v15 = v14;
    v16 = sub_1BF4B93C4(sub_1BF4005A4, v19, v23);

    if ((v16 & 1) == 0)
    {
      *(v21 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        v18 = v24;

        sub_1BF3FEC98(v21, v20, v22, v18);
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

uint64_t sub_1BF3FFA60(uint64_t a1, unint64_t a2)
{
  v2 = a1;
  v32[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = v3 & 0x3F;
  v5 = ((1 << v3) + 63) >> 6;
  v6 = 8 * v5;
  v31 = a2;

  if (v4 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v26 = &v26;
    v27 = v5;
    MEMORY[0x1EEE9AC00](v7);
    v28 = &v26 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v28, v6);
    v29 = 0;
    v30 = v2;
    v5 = 0;
    v10 = *(v2 + 56);
    v2 += 56;
    v9 = v10;
    v11 = 1 << *(v2 - 24);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & v9;
    v6 = (v11 + 63) >> 6;
    while (v13)
    {
      v14 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v17 = v14 | (v5 << 6);
      v32[0] = *(*(v30 + 48) + 8 * v17);
      MEMORY[0x1EEE9AC00](v8);
      *(&v26 - 2) = v32;
      v19 = v18;
      v20 = sub_1BF4B93C4(sub_1BF4005A4, (&v26 - 4), v31);

      if ((v20 & 1) == 0)
      {
        *&v28[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_16:
          v22 = sub_1BF3FEC98(v28, v27, v29, v30);
          goto LABEL_17;
        }
      }
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v6)
      {
        goto LABEL_16;
      }

      v16 = *(v2 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v13 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v24 = swift_slowAlloc();
  v25 = v31;

  v22 = sub_1BF3FEBFC(v24, v5, v2, v25);

  MEMORY[0x1BFB5A5D0](v24, -1, -1);
LABEL_17:

  return v22;
}

uint64_t sub_1BF3FFD20(uint64_t a1, unint64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_1BF3FFA60(a1, a2);
  }

  v3 = MEMORY[0x1E69E7CD0];
  v24 = MEMORY[0x1E69E7CD0];

  sub_1BF4E91F4();
  v4 = sub_1BF4E9234();
  if (v4)
  {
    v5 = v4;
    sub_1BF3901C0(0, &qword_1EDC96330, 0x1E6994408);
    v6 = v5;
    do
    {
      v22 = v6;
      v7 = swift_dynamicCast();
      v22 = v23;
      MEMORY[0x1EEE9AC00](v7);
      v21[2] = &v22;
      v8 = sub_1BF4B93C4(sub_1BF4002BC, v21, a2);
      v9 = v23;
      if (v8)
      {
      }

      else
      {
        v10 = *(v3 + 16);
        if (*(v3 + 24) <= v10)
        {
          sub_1BF4AD82C(v10 + 1);
        }

        v3 = v24;
        result = sub_1BF4E9094();
        v12 = v3 + 56;
        v13 = -1 << *(v3 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v3 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v3 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = 0;
          v18 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v18 && (v17 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v19 = v15 == v18;
            if (v15 == v18)
            {
              v15 = 0;
            }

            v17 |= v19;
            v20 = *(v12 + 8 * v15);
          }

          while (v20 == -1);
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v3 + 48) + 8 * v16) = v9;
        ++*(v3 + 16);
      }

      v6 = sub_1BF4E9234();
    }

    while (v6);
  }

  return v3;
}

uint64_t sub_1BF3FFFA0(uint64_t a1)
{
  result = sub_1BF4003F8(qword_1EDC99AE8, type metadata accessor for RelevanceCacheManager, &protocol conformance descriptor for RelevanceCacheManager);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for RelevanceCacheManager(uint64_t a1)
{
  result = qword_1EDC99AD0;
  if (!qword_1EDC99AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF40004C(uint64_t a1, double a2)
{
  result = sub_1BF4E7194();
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

unint64_t sub_1BF400254()
{
  result = qword_1EBDD8CD8;
  if (!qword_1EBDD8CD8)
  {
    sub_1BF3901C0(255, &qword_1EDC96330, 0x1E6994408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8CD8);
  }

  return result;
}

unint64_t sub_1BF400340()
{
  result = qword_1EDC963D0;
  if (!qword_1EDC963D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD8CE8, &unk_1BF4ED970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC963D0);
  }

  return result;
}

unint64_t sub_1BF4003A4()
{
  result = qword_1EBDD8CF0;
  if (!qword_1EBDD8CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8CF0);
  }

  return result;
}

uint64_t sub_1BF4003F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t get_enum_tag_for_layout_string_9ChronoKit30RelevanceCacheManagerErrorCodeO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BF400480(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
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

  v5 = v4 + 1;
  v6 = v4 - 2;
  if (v5 >= 4)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF4004E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *sub_1BF40053C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    a2 -= 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *result = a2;
  }

  return result;
}

uint64_t (*sub_1BF40061C(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = sub_1BF4E8424();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v9 = OBJC_IVAR____TtC9ChronoKit26FixedDataProtectionMonitor_maxUnlockedProtectionLevel;
  v5[6] = v8;
  v5[7] = v9;
  swift_beginAccess();
  return sub_1BF40070C;
}

uint64_t FixedDataProtectionMonitor.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8CF8, &qword_1BF4EDA20);
  swift_allocObject();
  *(v2 + 16) = sub_1BF4E7C34();
  v3 = OBJC_IVAR____TtC9ChronoKit26FixedDataProtectionMonitor_maxUnlockedProtectionLevel;
  v4 = sub_1BF4E8424();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t FixedDataProtectionMonitor.init(_:)(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8CF8, &qword_1BF4EDA20);
  swift_allocObject();
  *(v1 + 16) = sub_1BF4E7C34();
  v4 = OBJC_IVAR____TtC9ChronoKit26FixedDataProtectionMonitor_maxUnlockedProtectionLevel;
  v5 = sub_1BF4E8424();
  (*(*(v5 - 8) + 32))(v2 + v4, a1, v5);
  return v2;
}

uint64_t sub_1BF400874@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9ChronoKit26FixedDataProtectionMonitor_maxUnlockedProtectionLevel;
  swift_beginAccess();
  v4 = sub_1BF4E8424();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t FixedDataProtectionMonitor.deinit()
{

  v1 = OBJC_IVAR____TtC9ChronoKit26FixedDataProtectionMonitor_maxUnlockedProtectionLevel;
  v2 = sub_1BF4E8424();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t FixedDataProtectionMonitor.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC9ChronoKit26FixedDataProtectionMonitor_maxUnlockedProtectionLevel;
  v2 = sub_1BF4E8424();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF400A44@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9ChronoKit26FixedDataProtectionMonitor_maxUnlockedProtectionLevel;
  swift_beginAccess();
  v5 = sub_1BF4E8424();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_1BF400B00(uint64_t *a1, uint64_t *a2, unint64_t *a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_1BF38C8B4(a3, a1, a2, a4);
  return sub_1BF4E7C84();
}

uint64_t sub_1BF400B78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = sub_1BF4E8424();
  return (*(*(v6 - 8) + 16))(a3, v4 + v5, v6);
}

uint64_t sub_1BF400C00(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(char *))
{
  v10 = sub_1BF4E8424();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v23 - v16;
  v18 = *(v11 + 16);
  v18(&v23 - v16, a1, v10, v15);
  v19 = *a2;
  v20 = *a5;
  swift_beginAccess();
  (*(v11 + 24))(v19 + v20, v17, v10);
  swift_endAccess();
  (v18)(v13, v19 + v20, v10);
  a6(v13);
  v21 = *(v11 + 8);
  v21(v13, v10);
  return v21(v17, v10);
}

uint64_t sub_1BF400DB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = sub_1BF4E8424();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t sub_1BF400E54(_BYTE *a1, uint64_t *a2, void (*a3)(_BYTE *))
{
  v7 = sub_1BF4E8424();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  swift_beginAccess();
  (*(v8 + 24))(v3 + v11, a1, v7);
  swift_endAccess();
  (*(v8 + 16))(v10, v3 + v11, v7);
  a3(v10);
  v12 = *(v8 + 8);
  v12(a1, v7);
  return (v12)(v10, v7);
}

uint64_t (*sub_1BF400FB4(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = sub_1BF4E8424();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v9 = OBJC_IVAR____TtC9ChronoKit21DataProtectionMonitor_maxUnlockedProtectionLevel;
  v5[6] = v8;
  v5[7] = v9;
  swift_beginAccess();
  return sub_1BF4010A4;
}

void sub_1BF4010BC(void *a1, char a2, void (*a3)(void *))
{
  v5 = *a1;
  swift_endAccess();
  v6 = v5[6];
  if ((a2 & 1) == 0)
  {
    v7 = v5[4];
    v8 = v5[5];
    (*(v8 + 16))(v5[6], v5[3] + v5[7], v7);
    a3(v6);
    (*(v8 + 8))(v6, v7);
  }

  free(v6);

  free(v5);
}

uint64_t DataProtectionMonitor.deinit()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC9ChronoKit21DataProtectionMonitor_token))
  {

    sub_1BF4E7BD4();
  }

  v2 = OBJC_IVAR____TtC9ChronoKit21DataProtectionMonitor_maxUnlockedProtectionLevel;
  v3 = sub_1BF4E8424();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC9ChronoKit21DataProtectionMonitor_keybagStateProvider));

  return v1;
}

uint64_t DataProtectionMonitor.__deallocating_deinit()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC9ChronoKit21DataProtectionMonitor_token))
  {

    sub_1BF4E7BD4();
  }

  v2 = OBJC_IVAR____TtC9ChronoKit21DataProtectionMonitor_maxUnlockedProtectionLevel;
  v3 = sub_1BF4E8424();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC9ChronoKit21DataProtectionMonitor_keybagStateProvider));

  return swift_deallocClassInstance();
}

uint64_t sub_1BF401350(uint64_t a1)
{
  result = sub_1BF4E8424();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t Topic.suffixed.getter()
{
  if (*(v0 + 16))
  {
    v1 = 0xD000000000000012;
  }

  else
  {
    v1 = 0xD000000000000013;
  }

  if (*(v0 + 16))
  {
    v2 = "extensionIdentity: ";
  }

  else
  {
    v2 = "; subscriptionType: ";
  }

  v4 = *v0;

  MEMORY[0x1BFB58C90](v1, v2 | 0x8000000000000000);

  return v4;
}

uint64_t static Topic.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_1BF4E9734();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

ChronoKit::Topic __swiftcall Topic.init(_:pushType:)(ChronoKit::Topic _, ChronoKit::Topic::PushType pushType)
{
  v3 = *pushType;
  *v2 = _.unsuffixed;
  *(v2 + 16) = v3;
  _.pushType = pushType;
  return _;
}

uint64_t Topic.PushType.hashValue.getter(double a1)
{
  v2 = *v1;
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](v2);
  return sub_1BF4E9844();
}

uint64_t Topic.unsuffixed.getter()
{
  v1 = *v0;

  return v1;
}

ChronoKit::Topic_optional __swiftcall Topic.init(suffixed:)(Swift::String suffixed)
{
  object = suffixed._object;
  countAndFlagsBits = suffixed._countAndFlagsBits;
  v4 = v1;
  v5 = sub_1BF4E8A74();
  if (v5 & 1) != 0 || (sub_1BF4E8A74())
  {
    v6 = sub_1BF4E8A04();
    v7 = sub_1BF401A8C(v6, countAndFlagsBits, object);
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = MEMORY[0x1BFB58C30](v7, v9, v11, v13);
    v16 = v15;

    *v4 = v14;
    *(v4 + 8) = v16;
    *(v4 + 16) = (v5 & 1) == 0;
  }

  else
  {

    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
  }

  result.value.unsuffixed._object = v18;
  result.value.unsuffixed._countAndFlagsBits = v17;
  result.is_nil = v20;
  result.value.pushType = v19;
  return result;
}

uint64_t Topic.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1BF4E89F4();
  return MEMORY[0x1BFB59A70](v2);
}

uint64_t Topic.hashValue.getter(double a1)
{
  v2 = *(v1 + 16);
  sub_1BF4E9804();
  sub_1BF4E89F4();
  MEMORY[0x1BFB59A70](v2);
  return sub_1BF4E9844();
}

uint64_t sub_1BF401930(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_1BF4E9734();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t sub_1BF401990(double a1)
{
  v2 = *(v1 + 16);
  sub_1BF4E9804();
  sub_1BF4E89F4();
  MEMORY[0x1BFB59A70](v2);
  return sub_1BF4E9844();
}

uint64_t sub_1BF4019F4(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1BF4E89F4();
  return MEMORY[0x1BFB59A70](v2);
}

uint64_t sub_1BF401A2C(uint64_t a1, double a2)
{
  v3 = *(v2 + 16);
  sub_1BF4E9804();
  sub_1BF4E89F4();
  MEMORY[0x1BFB59A70](v3);
  return sub_1BF4E9844();
}

uint64_t sub_1BF401A8C(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1BF4E8A24();

    return sub_1BF4E8AA4();
  }

  return result;
}

unint64_t sub_1BF401B2C()
{
  result = qword_1EBDD8D58;
  if (!qword_1EBDD8D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8D58);
  }

  return result;
}

unint64_t sub_1BF401B84()
{
  result = qword_1EDC96688[0];
  if (!qword_1EDC96688[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC96688);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1BF401BEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1BF401C34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ConfiguredWidgetMetadataCache.__allocating_init(backingStore:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ConfiguredWidgetMetadataCache.init(backingStore:)(a1);
  return v2;
}

void *ConfiguredWidgetMetadataCache.init(backingStore:)(uint64_t a1)
{
  type metadata accessor for UnfairLock();
  v3 = swift_allocObject();
  v4 = swift_slowAlloc();
  *v4 = 0;
  *(v3 + 16) = v4;
  v1[2] = v3;
  v5 = sub_1BF3DA6BC(MEMORY[0x1E69E7CC0]);
  v1[3] = a1;
  v1[4] = v5;
  v6 = v1[2];
  v7 = *(v6 + 16);

  os_unfair_lock_lock(v7);
  sub_1BF401DA4(v1);
  os_unfair_lock_unlock(*(v6 + 16));

  return v1;
}

void sub_1BF401DA4(void *a1)
{
  v2 = v1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D60, &qword_1BF4EDC70);
  MEMORY[0x1EEE9AC00](v67);
  v5 = (v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v66 = v63 - v7;
  if (a1[3])
  {

    v8 = sub_1BF494854();
    if (v1)
    {

      if (qword_1EDC9D460 != -1)
      {
        swift_once();
      }

      v9 = sub_1BF4E7B54();
      __swift_project_value_buffer(v9, qword_1EDCA6898);
      v10 = v1;
      v11 = sub_1BF4E7B34();
      v12 = sub_1BF4E8E64();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v13 = 138543362;
        v15 = sub_1BF4E6FE4();
        *(v13 + 4) = v15;
        *v14 = v15;
        _os_log_impl(&dword_1BF389000, v11, v12, "Failed to load cached widget metadata: %{public}@", v13, 0xCu);
        sub_1BF38C9B4(v14, &unk_1EBDD9260, &qword_1BF4EC380);
        MEMORY[0x1BFB5A5D0](v14, -1, -1);
        MEMORY[0x1BFB5A5D0](v13, -1, -1);
      }

      a1[4] = sub_1BF3DA6BC(MEMORY[0x1E69E7CC0]);

      os_unfair_lock_assert_owner(*(a1[2] + 16));

      return;
    }

    v17 = v8;

    v16 = v17;
  }

  else
  {
    v16 = sub_1BF3DA6BC(MEMORY[0x1E69E7CC0]);
  }

  a1[4] = v16;

  os_unfair_lock_assert_owner(*(a1[2] + 16));
  if (qword_1EDC9D460 != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v18 = sub_1BF4E7B54();
    v19 = __swift_project_value_buffer(v18, qword_1EDCA6898);

    v63[0] = v19;
    v20 = sub_1BF4E7B34();
    v21 = sub_1BF4E8E84();

    v22 = os_log_type_enabled(v20, v21);
    v63[1] = v2;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v74 = v24;
      *v23 = 136446210;
      sub_1BF4E7334();

      v25 = v5;
      v26 = sub_1BF4E8774();
      v28 = v27;

      v29 = v26;
      v5 = v25;
      v30 = sub_1BF38D65C(v29, v28, &v74);

      *(v23 + 4) = v30;
      _os_log_impl(&dword_1BF389000, v20, v21, "Start dates for widget ids: %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x1BFB5A5D0](v24, -1, -1);
      MEMORY[0x1BFB5A5D0](v23, -1, -1);
    }

    v31 = a1[4];
    v32 = *(v31 + 16);
    a1 = MEMORY[0x1E69E7CC0];
    if (!v32)
    {
      break;
    }

    v76 = MEMORY[0x1E69E7CC0];

    sub_1BF3A31DC(0, v32, 0);
    a1 = v76;
    v33 = v31 + 64;
    v2 = sub_1BF4E91B4();
    v64 = v31 + 64;
    v65 = v31;
    while ((v2 & 0x8000000000000000) == 0 && v2 < 1 << *(v31 + 32))
    {
      if ((*(v33 + 8 * (v2 >> 6)) & (1 << v2)) == 0)
      {
        goto LABEL_32;
      }

      v70 = 1 << v2;
      v71 = v2 >> 6;
      v68 = v32;
      v73 = a1;
      v69 = *(v31 + 36);
      v34 = v67;
      v35 = *(v67 + 48);
      v36 = *(v31 + 56);
      v37 = (*(v31 + 48) + 16 * v2);
      v39 = *v37;
      v38 = v37[1];
      v40 = sub_1BF4E7334();
      v41 = *(v40 - 8);
      v42 = *(v41 + 72);
      v72 = v2;
      v43 = v36 + v42 * v2;
      v2 = v66;
      (*(v41 + 16))(&v66[v35], v43, v40);
      *v5 = v39;
      v5[1] = v38;
      (*(v41 + 32))(v5 + *(v34 + 48), v2 + v35, v40);
      v74 = v39;
      v75 = v38;
      swift_bridgeObjectRetain_n();
      MEMORY[0x1BFB58C90](2108704, 0xE300000000000000);
      if (qword_1EDC9F0F0 != -1)
      {
        swift_once();
      }

      v44 = qword_1EDC9F0F8;
      v45 = sub_1BF4E7254();
      v46 = [v44 stringFromDate_];

      v47 = sub_1BF4E8914();
      v49 = v48;

      MEMORY[0x1BFB58C90](v47, v49);

      v50 = v74;
      v51 = v75;
      sub_1BF38C9B4(v5, &qword_1EBDD8D60, &qword_1BF4EDC70);
      a1 = v73;
      v76 = v73;
      v53 = v73[2];
      v52 = v73[3];
      if (v53 >= v52 >> 1)
      {
        sub_1BF3A31DC((v52 > 1), v53 + 1, 1);
        a1 = v76;
      }

      a1[2] = v53 + 1;
      v54 = &a1[2 * v53];
      v54[4] = v50;
      v54[5] = v51;
      v31 = v65;
      if (v72 >= -(-1 << *(v65 + 32)))
      {
        goto LABEL_33;
      }

      v33 = v64;
      if ((*(v64 + 8 * v71) & v70) == 0)
      {
        goto LABEL_34;
      }

      if (v69 != *(v65 + 36))
      {
        goto LABEL_35;
      }

      v2 = sub_1BF4E91D4();
      v32 = v68 - 1;
      if (v68 == 1)
      {

        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
  }

LABEL_27:

  v55 = sub_1BF4E7B34();
  v56 = sub_1BF4E8E84();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v74 = v58;
    *v57 = 136446210;
    v59 = MEMORY[0x1BFB58E10](a1, MEMORY[0x1E69E6158]);
    v61 = v60;

    v62 = sub_1BF38D65C(v59, v61, &v74);

    *(v57 + 4) = v62;
    _os_log_impl(&dword_1BF389000, v55, v56, "Loaded cached widget metadata: %{public}s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    MEMORY[0x1BFB5A5D0](v58, -1, -1);
    MEMORY[0x1BFB5A5D0](v57, -1, -1);
  }

  else
  {
  }
}

void sub_1BF402580(unint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(*(v3 + 16));
  sub_1BF4025F8(v1, a1);
  v4 = *(v3 + 16);

  os_unfair_lock_unlock(v4);
}

void sub_1BF4025F8(uint64_t a1, unint64_t a2)
{
  isUniquelyReferenced_nonNull_native = sub_1BF4E7334();
  v84 = *(isUniquelyReferenced_nonNull_native - 8);
  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  v88 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v83 = &v76 - v8;

  v92 = sub_1BF432F44(v9);
  v91 = MEMORY[0x1E69E7CC0];

  sub_1BF404EAC(a2, &v92, a1, &v91);
  v76 = a1;
  v77 = v2;

  v10 = &unk_1EDC9D000;
  if (*(v92 + 16))
  {
    if (qword_1EDC9D460 != -1)
    {
      swift_once();
    }

    v11 = sub_1BF4E7B54();
    __swift_project_value_buffer(v11, qword_1EDCA6898);
    v12 = sub_1BF4E7B34();
    v13 = sub_1BF4E8E84();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138543362;

      v16 = sub_1BF4E8D24();

      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&dword_1BF389000, v12, v13, "Removing widget metadata entries: %{public}@", v14, 0xCu);
      sub_1BF38C9B4(v15, &unk_1EBDD9260, &qword_1BF4EC380);
      MEMORY[0x1BFB5A5D0](v15, -1, -1);
      MEMORY[0x1BFB5A5D0](v14, -1, -1);
    }
  }

  v17 = v91;
  v18 = (v91 >> 62);
  if (v91 >> 62)
  {
    goto LABEL_58;
  }

  v19 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v19)
  {
    goto LABEL_9;
  }

LABEL_27:
  v38 = *(v76 + 24);
  if (v38)
  {
    MEMORY[0x1EEE9AC00](v19);
    *(&v76 - 2) = &v92;
    *(&v76 - 1) = &v91;
    v39 = *(v38 + 16);
    type metadata accessor for ChronoMetadataStore.MutableStore();
    swift_allocObject();
    v40 = sub_1BF4A4E98(v39);
    v41 = *(v38 + 136);
    os_unfair_lock_lock(*(v41 + 16));
    v42 = *(v38 + 16);

    v43 = v42;
    v44 = v77;
    sub_1BF3E7904(0x6957657461647075, 0xEF74655374656764, v43, sub_1BF405338, (&v76 - 4), v40);
    v18 = v44;

    if (v44)
    {

      v18 = 0;
    }

    os_unfair_lock_unlock(*(v41 + 16));
    sub_1BF48EBD0();
  }

  else
  {
    v18 = v77;
  }

  swift_beginAccess();
  v45 = v91;

  v46 = sub_1BF3DA6BC(MEMORY[0x1E69E7CC0]);
  if (v45 >> 62)
  {
    v47 = sub_1BF4E9204();
    v77 = v18;
    if (v47)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v47 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v77 = v18;
    if (v47)
    {
LABEL_34:
      v10 = 0;
      v81 = v45 & 0xFFFFFFFFFFFFFF8;
      v82 = v45 & 0xC000000000000001;
      v85 = (v84 + 32);
      v78 = v84 + 40;
      v79 = v47;
      v80 = v45;
      do
      {
        if (v82)
        {
          v48 = MEMORY[0x1BFB59570](v10, v45);
          v49 = (v10 + 1);
          if (__OFADD__(v10, 1))
          {
            goto LABEL_54;
          }
        }

        else
        {
          if (v10 >= *(v81 + 16))
          {
            goto LABEL_55;
          }

          v48 = *(v45 + 8 * v10 + 32);
          v49 = (v10 + 1);
          if (__OFADD__(v10, 1))
          {
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            v19 = sub_1BF4E9204();
            if (!v19)
            {
              goto LABEL_27;
            }

LABEL_9:
            if (*(v10 + 1120) != -1)
            {
              swift_once();
            }

            v20 = sub_1BF4E7B54();
            __swift_project_value_buffer(v20, qword_1EDCA6898);
            v21 = sub_1BF4E7B34();
            v22 = sub_1BF4E8E84();
            if (!os_log_type_enabled(v21, v22))
            {
              goto LABEL_26;
            }

            v23 = swift_slowAlloc();
            v24 = swift_slowAlloc();
            *v23 = 138543362;
            if (v18)
            {
              v25 = sub_1BF4E9204();
            }

            else
            {
              v25 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (!v25)
            {
              goto LABEL_25;
            }

            v81 = v24;
            LODWORD(v82) = v22;
            v85 = v23;
            v86 = v21;
            v87 = isUniquelyReferenced_nonNull_native;
            v90 = MEMORY[0x1E69E7CC0];

            sub_1BF3A31DC(0, v25 & ~(v25 >> 63), 0);
            if ((v25 & 0x8000000000000000) == 0)
            {
              v26 = 0;
              v27 = v90;
              do
              {
                if ((v17 & 0xC000000000000001) != 0)
                {
                  v28 = MEMORY[0x1BFB59570](v26, v17);
                }

                else
                {
                  v28 = *(v17 + 8 * v26 + 32);
                }

                v29 = v28;
                v30 = [v28 uniqueIdentifier];
                v31 = sub_1BF4E8914();
                v33 = v32;

                v90 = v27;
                v35 = *(v27 + 16);
                v34 = *(v27 + 24);
                if (v35 >= v34 >> 1)
                {
                  sub_1BF3A31DC((v34 > 1), v35 + 1, 1);
                  v27 = v90;
                }

                ++v26;
                *(v27 + 16) = v35 + 1;
                v36 = v27 + 16 * v35;
                *(v36 + 32) = v31;
                *(v36 + 40) = v33;
              }

              while (v25 != v26);

              v21 = v86;
              isUniquelyReferenced_nonNull_native = v87;
              v23 = v85;
              LOBYTE(v22) = v82;
              v24 = v81;
LABEL_25:
              v37 = sub_1BF4E8B84();

              *(v23 + 4) = v37;
              *v24 = v37;
              _os_log_impl(&dword_1BF389000, v21, v22, "Added widget metadata entries: %{public}@", v23, 0xCu);
              sub_1BF38C9B4(v24, &unk_1EBDD9260, &qword_1BF4EC380);
              MEMORY[0x1BFB5A5D0](v24, -1, -1);
              MEMORY[0x1BFB5A5D0](v23, -1, -1);
LABEL_26:

              goto LABEL_27;
            }

            __break(1u);
LABEL_64:
            sub_1BF4E9794();
            __break(1u);
LABEL_65:

            __break(1u);
            return;
          }
        }

        v86 = v49;
        v87 = v48;
        v50 = [v48 uniqueIdentifier];
        v51 = sub_1BF4E8914();
        v53 = v52;

        v54 = v83;
        sub_1BF4E7324();
        v18 = *v85;
        v17 = isUniquelyReferenced_nonNull_native;
        (*v85)(v88, v54, isUniquelyReferenced_nonNull_native);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v89 = v46;
        v57 = sub_1BF3CD5D0(v51, v53, v55);
        v58 = v46[2];
        v59 = (v56 & 1) == 0;
        v60 = v58 + v59;
        if (__OFADD__(v58, v59))
        {
          goto LABEL_56;
        }

        v61 = v56;
        if (v46[3] >= v60)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            isUniquelyReferenced_nonNull_native = v17;
            if (v56)
            {
              goto LABEL_35;
            }
          }

          else
          {
            sub_1BF4A2AB4();
            isUniquelyReferenced_nonNull_native = v17;
            if (v61)
            {
              goto LABEL_35;
            }
          }
        }

        else
        {
          sub_1BF49E664(v60, isUniquelyReferenced_nonNull_native);
          v63 = sub_1BF3CD5D0(v51, v53, v62);
          if ((v61 & 1) != (v64 & 1))
          {
            goto LABEL_64;
          }

          v57 = v63;
          isUniquelyReferenced_nonNull_native = v17;
          if (v61)
          {
LABEL_35:

            v46 = v89;
            (*(v84 + 40))(v89[7] + *(v84 + 72) * v57, v88, isUniquelyReferenced_nonNull_native);

            goto LABEL_36;
          }
        }

        v65 = v88;
        v46 = v89;
        v89[(v57 >> 6) + 8] |= 1 << v57;
        v66 = (v46[6] + 16 * v57);
        *v66 = v51;
        v66[1] = v53;
        v18((v46[7] + *(v84 + 72) * v57), v65, isUniquelyReferenced_nonNull_native);

        v67 = v46[2];
        v68 = __OFADD__(v67, 1);
        v69 = v67 + 1;
        if (v68)
        {
          goto LABEL_57;
        }

        v46[2] = v69;
LABEL_36:
        ++v10;
        v45 = v80;
      }

      while (v86 != v79);
    }
  }

  v70 = v76;

  v72 = v77;
  sub_1BF403F44(v71, &v92);
  v74 = v73;

  v75 = swift_isUniquelyReferenced_nonNull_native();
  v89 = v74;
  sub_1BF404FB0(v46, sub_1BF404230, 0, v75, &v89);
  if (v72)
  {
    goto LABEL_65;
  }

  *(v70 + 32) = v89;

  os_unfair_lock_assert_owner(*(*(v70 + 16) + 16));
}

uint64_t sub_1BF402F44(void **a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v32 - v9;
  v11 = *a1;
  v12 = [v11 uniqueIdentifier];
  v13 = sub_1BF4E8914();
  v15 = v14;

  sub_1BF4DAC9C(v13, v15, v16);

  v17 = [v11 uniqueIdentifier];
  v18 = sub_1BF4E8914();
  v20 = v19;

  v21 = *(a3 + 32);
  if (*(v21 + 16) && (, v23 = sub_1BF3CD5D0(v18, v20, v22), v25 = v24, , (v25 & 1) != 0))
  {
    v26 = *(v21 + 56);
    v27 = sub_1BF4E7334();
    v28 = *(v27 - 8);
    (*(v28 + 16))(v10, v26 + *(v28 + 72) * v23, v27);

    (*(v28 + 56))(v10, 0, 1, v27);
    return sub_1BF38C9B4(v10, &qword_1EBDD9B00, &qword_1BF4F1E50);
  }

  else
  {

    v30 = sub_1BF4E7334();
    (*(*(v30 - 8) + 56))(v10, 1, 1, v30);
    sub_1BF38C9B4(v10, &qword_1EBDD9B00, &qword_1BF4F1E50);
    v31 = v11;
    MEMORY[0x1BFB58DD0]();
    if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BF4E8BE4();
    }

    return sub_1BF4E8C24();
  }
}

void sub_1BF40321C(uint64_t a1, void *a2, unint64_t *a3)
{
  v4 = v3;
  v41 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v43 = &v36 - v8;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v37 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v36 - v9;
  swift_beginAccess();
  v10 = *a2;
  v11 = *a2 + 56;
  v12 = 1 << *(*a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(*a2 + 56);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  if (v14)
  {
    while (1)
    {
      v17 = v16;
LABEL_8:
      v18 = (*(v10 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v14)))));
      v19 = *v18;
      v20 = v18[1];

      sub_1BF4956D4(v19, v20);
      if (v4)
      {
        break;
      }

      v14 &= v14 - 1;

      v16 = v17;
      if (!v14)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
    while (1)
    {
LABEL_5:
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v17 >= v15)
      {
        break;
      }

      v14 = *(v11 + 8 * v17);
      ++v16;
      if (v14)
      {
        goto LABEL_8;
      }
    }

    v44 = v4;

    swift_beginAccess();
    v4 = *a3;
    if (*a3 >> 62)
    {
      goto LABEL_29;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BF4E9204())
    {
      v22 = v42;

      if (!i)
      {
        break;
      }

      v23 = 0;
      v38 = v4 & 0xFFFFFFFFFFFFFF8;
      v39 = v4 & 0xC000000000000001;
      ++v37;
      while (1)
      {
        if (v39)
        {
          v24 = MEMORY[0x1BFB59570](v23, v4);
        }

        else
        {
          if (v23 >= *(v38 + 16))
          {
            goto LABEL_28;
          }

          v24 = *(v4 + 8 * v23 + 32);
        }

        v25 = v24;
        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        v42 = *(v41 + 32);
        v27 = [v24 extensionIdentity];
        sub_1BF4E9024();

        v28 = [v25 uniqueIdentifier];
        v29 = sub_1BF4E8914();
        v31 = v30;

        v32 = sub_1BF4E7334();
        (*(*(v32 - 8) + 56))(v43, 1, 1, v32);
        v33 = v29;
        v34 = v43;
        v35 = v44;
        sub_1BF494D14(v22, v33, v31, v43);
        v44 = v35;
        if (v35)
        {

          sub_1BF38C9B4(v34, &qword_1EBDD9B00, &qword_1BF4F1E50);
          (*v37)(v22, v40);
          return;
        }

        sub_1BF38C9B4(v34, &qword_1EBDD9B00, &qword_1BF4F1E50);
        (*v37)(v22, v40);
        ++v23;
        if (v26 == i)
        {
          goto LABEL_23;
        }
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      ;
    }

LABEL_23:
  }
}

char *sub_1BF403668(double a1)
{
  v1 = sub_1BF4E7334();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF4E7294();
  v5 = sub_1BF403748(v4);
  (*(v2 + 8))(v4, v1);
  return v5;
}

char *sub_1BF403748(uint64_t a1)
{
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D60, &qword_1BF4EDC70);
  MEMORY[0x1EEE9AC00](v55);
  v54 = (&v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v53 = (&v46 - v5);
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v46 - v7;
  v8 = *(v1 + 16);
  os_unfair_lock_lock(*(v8 + 16));
  v9 = *(v1 + 32);
  v61 = a1;

  sub_1BF4040B0(sub_1BF404D88, v60, v9);
  v11 = v10;

  v12 = *(v11 + 16);
  if (v12)
  {
    v47 = v8;
    v62 = MEMORY[0x1E69E7CC0];
    sub_1BF3A31DC(0, v12, 0);
    v13 = v62;
    v14 = v11 + 64;
    result = sub_1BF4E91B4();
    v16 = result;
    v17 = 0;
    v48 = v11 + 72;
    v49 = v12;
    v50 = v11 + 64;
    v51 = v11;
    while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(v11 + 32))
    {
      v19 = v16 >> 6;
      if ((*(v14 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
      {
        goto LABEL_23;
      }

      v56 = v17;
      v57 = *(v11 + 36);
      v58 = 1 << v16;
      v20 = v55;
      v21 = *(v55 + 48);
      v22 = *(v11 + 56);
      v23 = (*(v11 + 48) + 16 * v16);
      v59 = v13;
      v24 = *v23;
      v25 = v23[1];
      v26 = sub_1BF4E7334();
      v27 = *(v26 - 8);
      v28 = v52;
      (*(v27 + 16))(&v52[v21], v22 + *(v27 + 72) * v16, v26);
      v29 = v53;
      *v53 = v24;
      *(v29 + 8) = v25;
      (*(v27 + 32))(v29 + *(v20 + 48), &v28[v21], v26);
      v30 = v54;
      sub_1BF405354(v29, v54, &qword_1EBDD8D60, &qword_1BF4EDC70);
      v31 = *v30;
      v32 = v30[1];
      v33 = *(v20 + 48);
      v34 = *(v27 + 8);

      v35 = v30 + v33;
      v13 = v59;
      result = v34(v35, v26);
      v62 = v13;
      v37 = *(v13 + 16);
      v36 = *(v13 + 24);
      if (v37 >= v36 >> 1)
      {
        result = sub_1BF3A31DC((v36 > 1), v37 + 1, 1);
        v13 = v62;
      }

      *(v13 + 16) = v37 + 1;
      v38 = v13 + 16 * v37;
      *(v38 + 32) = v31;
      *(v38 + 40) = v32;
      v11 = v51;
      v18 = 1 << *(v51 + 32);
      if (v16 >= v18)
      {
        goto LABEL_24;
      }

      v14 = v50;
      v39 = *(v50 + 8 * v19);
      if ((v39 & v58) == 0)
      {
        goto LABEL_25;
      }

      if (v57 != *(v51 + 36))
      {
        goto LABEL_26;
      }

      v40 = v39 & (-2 << (v16 & 0x3F));
      if (v40)
      {
        v18 = __clz(__rbit64(v40)) | v16 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v41 = v19 << 6;
        v42 = v19 + 1;
        v43 = (v48 + 8 * v19);
        while (v42 < (v18 + 63) >> 6)
        {
          v45 = *v43++;
          v44 = v45;
          v41 += 64;
          ++v42;
          if (v45)
          {
            result = sub_1BF404DA8(v16, v57, 0);
            v18 = __clz(__rbit64(v44)) + v41;
            goto LABEL_4;
          }
        }

        result = sub_1BF404DA8(v16, v57, 0);
      }

LABEL_4:
      v17 = v56 + 1;
      v16 = v18;
      if (v56 + 1 == v49)
      {

        v8 = v47;
        goto LABEL_21;
      }
    }

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

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
LABEL_21:
    os_unfair_lock_unlock(*(v8 + 16));
    return v13;
  }

  return result;
}

uint64_t sub_1BF403B74(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D60, &qword_1BF4EDC70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = *a1;
  v9 = a1[1];
  *v7 = v8;
  *(v7 + 1) = v9;
  v11 = *(v10 + 56);
  v12 = sub_1BF4E7334();
  (*(*(v12 - 8) + 16))(&v7[v11], a2, v12);

  v13 = sub_1BF4E7264();
  sub_1BF38C9B4(v7, &qword_1EBDD8D60, &qword_1BF4EDC70);
  return v13 & 1;
}

void *ConfiguredWidgetMetadataCache.deinit()
{

  return v0;
}

uint64_t ConfiguredWidgetMetadataCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

char *sub_1BF403D24(double a1)
{
  v1 = sub_1BF4E7334();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF4E7294();
  v5 = sub_1BF403748(v4);
  (*(v2 + 8))(v4, v1);
  return v5;
}

void *sub_1BF403E2C(void *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1BF4042EC(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_1BF403EB4(void *result, uint64_t a2, void *a3, uint64_t (*a4)(void *, char *, __n128))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1BF404730(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1BF403F44(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      sub_1BF403E2C(v9, v6, v4, a2);
      MEMORY[0x1BFB5A5D0](v9, -1, -1);
      return;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v8 = v10 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v8, v7);
  sub_1BF4042EC(v8, v6, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }
}

void sub_1BF4040B0(uint64_t (*a1)(void *, char *, __n128), uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      sub_1BF403EB4(v10, v7, a3, v5);
      MEMORY[0x1BFB5A5D0](v10, -1, -1);
      return;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v9 = v11 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v9, v8);
  sub_1BF404730(v9, v7, a3, v5);
  if (v3)
  {
    swift_willThrow();
  }
}

double sub_1BF404230@<D0>(char *a1@<X0>, char *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D60, &qword_1BF4EDC70) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87B0, &qword_1BF4EDD20) + 48);
  v7 = *a1;
  v6 = *(a1 + 1);
  v8 = sub_1BF4E7334();
  (*(*(v8 - 8) + 16))(&a2[v5], &a1[v4], v8);
  *a2 = v7;
  *(a2 + 1) = v6;

  return result;
}

void sub_1BF4042EC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = a2;
  v40 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D60, &qword_1BF4EDC70);
  MEMORY[0x1EEE9AC00](v46);
  v7 = &v37 - v6;
  v8 = sub_1BF4E7334();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a3;
  v11 = *(a3 + 64);
  v39 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & v11;
  v47 = a4;
  swift_beginAccess();
  v15 = 0;
  v16 = 0;
  v17 = (v12 + 63) >> 6;
  v43 = v9 + 16;
  v44 = v9;
  v42 = (v9 + 8);
  v45 = v8;
LABEL_5:
  v41 = v15;
  while (v14)
  {
    v18 = __clz(__rbit64(v14));
    v50 = (v14 - 1) & v14;
LABEL_14:
    v21 = v18 | (v16 << 6);
    v22 = v49[7];
    v23 = (v49[6] + 16 * v21);
    v25 = *v23;
    v24 = v23[1];
    v26 = *(v44 + 72);
    v48 = v21;
    v27 = *(v44 + 16);
    v28 = v51;
    v27(v51, v22 + v26 * v21, v8);
    *v7 = v25;
    *(v7 + 1) = v24;
    v27(&v7[*(v46 + 48)], v28, v8);
    v29 = *v47;
    if (!*(*v47 + 16))
    {
      swift_bridgeObjectRetain_n();
LABEL_24:
      sub_1BF38C9B4(v7, &qword_1EBDD8D60, &qword_1BF4EDC70);
      v8 = v45;
      (*v42)(v51, v45);

      *(v40 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
      v15 = v41 + 1;
      v14 = v50;
      if (__OFADD__(v41, 1))
      {
        goto LABEL_30;
      }

      goto LABEL_5;
    }

    v30 = v7;
    sub_1BF4E9804();
    swift_bridgeObjectRetain_n();

    sub_1BF4E89F4();
    v31 = sub_1BF4E9844();
    v32 = -1 << *(v29 + 32);
    v33 = v31 & ~v32;
    if (((*(v29 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
    {
LABEL_23:

      v7 = v30;
      goto LABEL_24;
    }

    v34 = ~v32;
    while (1)
    {
      v35 = (*(v29 + 48) + 16 * v33);
      v36 = *v35 == v25 && v35[1] == v24;
      if (v36 || (sub_1BF4E9734() & 1) != 0)
      {
        break;
      }

      v33 = (v33 + 1) & v34;
      if (((*(v29 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v7 = v30;
    sub_1BF38C9B4(v30, &qword_1EBDD8D60, &qword_1BF4EDC70);
    v8 = v45;
    (*v42)(v51, v45);

    v14 = v50;
  }

  v19 = v16;
  while (1)
  {
    v16 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v16 >= v17)
    {
      sub_1BF4DA624(v40, v38, v41, v49);
      return;
    }

    v20 = *(v39 + 8 * v16);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v50 = (v20 - 1) & v20;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

void sub_1BF404730(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *, char *, __n128))
{
  v36 = a4;
  v30 = a2;
  v31 = a1;
  v39 = sub_1BF4E7334();
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v39);
  v37 = a3;
  v38 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v11 = a3[8];
  v10 = a3 + 8;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v34 = v5 + 16;
  v35 = v5;
  v32 = 0;
  v33 = (v5 + 8);
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v17 = v16 | (v8 << 6);
    v19 = v38;
    v18 = v39;
LABEL_11:
    v22 = v37[7];
    v23 = (v37[6] + 16 * v17);
    v24 = v23[1];
    v40[0] = *v23;
    v40[1] = v24;
    (*(v35 + 16))(v19, v22 + *(v35 + 72) * v17, v18, v6);

    v25 = v41;
    v26 = (v36)(v40, v19);
    v27 = v19;
    v41 = v25;
    if (v25)
    {
      (*v33)(v19, v18);

      return;
    }

    v28 = v26;
    (*v33)(v27, v18);

    if (v28)
    {
      *(v31 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
LABEL_16:
        sub_1BF4DA624(v31, v30, v32, v37);
        return;
      }
    }
  }

  v20 = v8;
  v19 = v38;
  v18 = v39;
  while (1)
  {
    v8 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      goto LABEL_16;
    }

    v21 = v10[v8];
    ++v20;
    if (v21)
    {
      v14 = (v21 - 1) & v21;
      v17 = __clz(__rbit64(v21)) | (v8 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1BF4049A4(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D60, &qword_1BF4EDC70);
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v42 - v4;
  v45 = sub_1BF4E7334();
  v6 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D70, &unk_1BF4EDD28);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v49 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - v12;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v42 = v5;
  v48 = v18;
  if (v19)
  {
    v44 = a1;
    v20 = v17;
LABEL_11:
    v43 = (v19 - 1) & v19;
    v24 = __clz(__rbit64(v19)) | (v20 << 6);
    v25 = (*(v15 + 48) + 16 * v24);
    v26 = *v25;
    v27 = v25[1];
    v28 = v45;
    (*(v6 + 16))(v8, *(v15 + 56) + *(v6 + 72) * v24, v45, v13);
    v29 = v47;
    v30 = *(v47 + 48);
    *v14 = v26;
    *(v14 + 1) = v27;
    v31 = v8;
    v32 = v29;
    (*(v6 + 32))(&v14[v30], v31, v28);
    v33 = v46;
    (*(v46 + 56))(v14, 0, 1, v32);

    v34 = v43;
    a1 = v44;
    v23 = v20;
    v35 = v33;
LABEL_12:
    *v1 = v15;
    v1[1] = v16;
    v36 = v49;
    v1[2] = v48;
    v1[3] = v23;
    v1[4] = v34;
    v37 = v1[5];
    sub_1BF405354(v14, v36, &qword_1EBDD8D70, &unk_1BF4EDD28);
    v38 = 1;
    if ((*(v35 + 48))(v36, 1, v32) != 1)
    {
      v39 = v36;
      v40 = v42;
      sub_1BF405354(v39, v42, &qword_1EBDD8D60, &qword_1BF4EDC70);
      v37(v40);
      sub_1BF38C9B4(v40, &qword_1EBDD8D60, &qword_1BF4EDC70);
      v38 = 0;
    }

    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87B0, &qword_1BF4EDD20);
    (*(*(v41 - 8) + 56))(a1, v38, 1, v41);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v35 = v46;
        v32 = v47;
        (*(v46 + 56))(&v42 - v12, 1, 1, v47, v13);
        v34 = 0;
        goto LABEL_12;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        v44 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}