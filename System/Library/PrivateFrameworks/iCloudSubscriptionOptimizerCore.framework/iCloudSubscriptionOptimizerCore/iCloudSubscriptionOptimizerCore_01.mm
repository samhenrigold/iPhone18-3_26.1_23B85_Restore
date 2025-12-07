unint64_t sub_275A604A8()
{
  result = qword_280A24708;
  if (!qword_280A24708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A24700, &unk_275AE7E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A24708);
  }

  return result;
}

uint64_t ISOPB_SubscriptionLabelMessage.minsUntilIcloudNotificationOpened.getter()
{
  v1 = (v0 + *(type metadata accessor for ISOPB_SubscriptionLabelMessage(0) + 20));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t ISOPB_SubscriptionLabelMessage.minsUntilIcloudNotificationOpened.setter(uint64_t a1)
{
  result = type metadata accessor for ISOPB_SubscriptionLabelMessage(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*ISOPB_SubscriptionLabelMessage.minsUntilIcloudNotificationOpened.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for ISOPB_SubscriptionLabelMessage(0) + 20);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_275A57784;
}

Swift::Void __swiftcall ISOPB_SubscriptionLabelMessage.clearMinsUntilIcloudNotificationOpened()()
{
  v1 = v0 + *(type metadata accessor for ISOPB_SubscriptionLabelMessage(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t ISOPB_SubscriptionLabelMessage.label.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptionLabelMessage(0) + 24));
  if (v1 == 3)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t ISOPB_SubscriptionLabelMessage.label.setter(char a1)
{
  result = type metadata accessor for ISOPB_SubscriptionLabelMessage(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*ISOPB_SubscriptionLabelMessage.label.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for ISOPB_SubscriptionLabelMessage(0) + 24);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 3)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_275A6072C;
}

iCloudSubscriptionOptimizerCore::ISOPB_SubscriptionLabelMessage::CloudNotificationActionLabel_optional __swiftcall ISOPB_SubscriptionLabelMessage.CloudNotificationActionLabel.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

uint64_t sub_275A607DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A75694();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ISOPB_SubscriptionLabelMessage.init()@<X0>(uint64_t a1@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = type metadata accessor for ISOPB_SubscriptionLabelMessage(0);
  v3 = a1 + *(result + 20);
  *v3 = 0;
  *(v3 + 8) = 1;
  *(a1 + *(result + 24)) = 3;
  return result;
}

uint64_t ISOPB_SubscriptiondPetMessage.timestampMillis.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  if (*(v1 + 24))
  {
    return 0;
  }

  else
  {
    return *(v1 + 16);
  }
}

uint64_t ISOPB_SubscriptiondPetMessage.timestampMillis.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v7 = sub_275A72BF8(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 16) = a1;
  *(v6 + 24) = 0;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.timestampMillis.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (*(v6 + 24))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A60A7C;
}

void sub_275A60A7C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v10 = sub_275A72BF8(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 16) = v3;
  *(v7 + 24) = 0;

  free(v2);
}

BOOL ISOPB_SubscriptiondPetMessage.hasTimestampMillis.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return (*(v1 + 24) & 1) == 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearTimestampMillis()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v5 = sub_275A72BF8(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 16) = 0;
  *(v4 + 24) = 1;
}

uint64_t ISOPB_SubscriptiondPetMessage.hourOfDay.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  if (*(v1 + 32))
  {
    return 0;
  }

  else
  {
    return *(v1 + 28);
  }
}

uint64_t ISOPB_SubscriptiondPetMessage.hourOfDay.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v7 = sub_275A72BF8(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 28) = a1;
  *(v6 + 32) = 0;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.hourOfDay.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 28);
  if (*(v6 + 32))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_275A60DF4;
}

void sub_275A60DF4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 84);
  v5 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 84);
    v9 = *(v2 + 72);
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v10 = sub_275A72BF8(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 28) = v3;
  *(v7 + 32) = 0;

  free(v2);
}

BOOL ISOPB_SubscriptiondPetMessage.hasHourOfDay.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return (*(v1 + 32) & 1) == 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearHourOfDay()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v5 = sub_275A72BF8(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 28) = 0;
  *(v4 + 32) = 1;
}

uint64_t ISOPB_SubscriptiondPetMessage.lastOpenedAppID24H.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  if (*(v1 + 48))
  {
    v2 = *(v1 + 40);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t ISOPB_SubscriptiondPetMessage.lastOpenedAppID24H.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v9 = sub_275A72BF8(v8);

    *(v3 + v6) = v9;
    v8 = v9;
  }

  swift_beginAccess();
  *(v8 + 40) = a1;
  *(v8 + 48) = a2;
}

void (*ISOPB_SubscriptiondPetMessage.lastOpenedAppID24H.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 48))
  {
    v7 = *(v6 + 40);
    v8 = *(v6 + 48);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return sub_275A611A0;
}

void sub_275A611A0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
      swift_allocObject();
      v11 = sub_275A72BF8(v8);

      *(v10 + v9) = v11;
      v8 = v11;
    }

    swift_beginAccess();
    *(v8 + 40) = v3;
    *(v8 + 48) = v5;
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v6 + v4);
    if ((v12 & 1) == 0)
    {
      v14 = *(v2 + 96);
      v15 = *(v2 + 88);
      type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
      swift_allocObject();
      v16 = sub_275A72BF8(v13);

      *(v15 + v14) = v16;
      v13 = v16;
    }

    swift_beginAccess();
    *(v13 + 40) = v3;
    *(v13 + 48) = v5;
  }

  free(v2);
}

BOOL ISOPB_SubscriptiondPetMessage.hasLastOpenedAppID24H.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return *(v1 + 48) != 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearLastOpenedAppID24H()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v5 = sub_275A72BF8(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
}

uint64_t ISOPB_SubscriptiondPetMessage.lastOpenedAppHour24H.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  if (*(v1 + 64))
  {
    return 0;
  }

  else
  {
    return *(v1 + 56);
  }
}

uint64_t ISOPB_SubscriptiondPetMessage.lastOpenedAppHour24H.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v7 = sub_275A72BF8(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 56) = a1;
  *(v6 + 64) = 0;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.lastOpenedAppHour24H.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 56);
  if (*(v6 + 64))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A61588;
}

void sub_275A61588(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v10 = sub_275A72BF8(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 56) = v3;
  *(v7 + 64) = 0;

  free(v2);
}

BOOL ISOPB_SubscriptiondPetMessage.hasLastOpenedAppHour24H.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return (*(v1 + 64) & 1) == 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearLastOpenedAppHour24H()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v5 = sub_275A72BF8(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 56) = 0;
  *(v4 + 64) = 1;
}

uint64_t ISOPB_SubscriptiondPetMessage.isSleepModeOn.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return *(v1 + 65) & 1;
}

uint64_t ISOPB_SubscriptiondPetMessage.isSleepModeOn.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v7 = sub_275A72BF8(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 65) = a1 & 1;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.isSleepModeOn.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 65) & 1;
  return sub_275A618F0;
}

void sub_275A618F0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v10 = sub_275A72BF8(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 65) = v5;

  free(v2);
}

BOOL ISOPB_SubscriptiondPetMessage.hasIsSleepModeOn.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return *(v1 + 65) != 2;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearIsSleepModeOn()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v5 = sub_275A72BF8(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 65) = 2;
}

uint64_t ISOPB_SubscriptiondPetMessage.isDoNotDisturbOn.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return *(v1 + 66) & 1;
}

uint64_t ISOPB_SubscriptiondPetMessage.isDoNotDisturbOn.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v7 = sub_275A72BF8(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 66) = a1 & 1;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.isDoNotDisturbOn.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 66) & 1;
  return sub_275A61C4C;
}

void sub_275A61C4C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v10 = sub_275A72BF8(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 66) = v5;

  free(v2);
}

BOOL ISOPB_SubscriptiondPetMessage.hasIsDoNotDisturbOn.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return *(v1 + 66) != 2;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearIsDoNotDisturbOn()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v5 = sub_275A72BF8(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 66) = 2;
}

uint64_t ISOPB_SubscriptiondPetMessage.isDrivingModeOn.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return *(v1 + 67) & 1;
}

uint64_t ISOPB_SubscriptiondPetMessage.isDrivingModeOn.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v7 = sub_275A72BF8(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 67) = a1 & 1;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.isDrivingModeOn.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 67) & 1;
  return sub_275A61FA8;
}

void sub_275A61FA8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v10 = sub_275A72BF8(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 67) = v5;

  free(v2);
}

BOOL ISOPB_SubscriptiondPetMessage.hasIsDrivingModeOn.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return *(v1 + 67) != 2;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearIsDrivingModeOn()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v5 = sub_275A72BF8(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 67) = 2;
}

double ISOPB_SubscriptiondPetMessage.openedNotificationRatio24H.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  result = *(v1 + 72);
  if (*(v1 + 80))
  {
    return 0.0;
  }

  return result;
}

uint64_t ISOPB_SubscriptiondPetMessage.openedNotificationRatio24H.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v7 = sub_275A72BF8(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 72) = a1;
  *(v6 + 80) = 0;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.openedNotificationRatio24H.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 72);
  if (*(v6 + 80))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_275A6231C;
}

void sub_275A6231C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v10 = sub_275A72BF8(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 72) = v3;
  *(v7 + 80) = 0;

  free(v2);
}

BOOL ISOPB_SubscriptiondPetMessage.hasOpenedNotificationRatio24H.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return (*(v1 + 80) & 1) == 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearOpenedNotificationRatio24H()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v5 = sub_275A72BF8(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 72) = 0;
  *(v4 + 80) = 1;
}

uint64_t ISOPB_SubscriptiondPetMessage.googleDriveAppLaunchCount1W.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  if (*(v1 + 96))
  {
    return 0;
  }

  else
  {
    return *(v1 + 88);
  }
}

uint64_t ISOPB_SubscriptiondPetMessage.googleDriveAppLaunchCount1W.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v7 = sub_275A72BF8(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 88) = a1;
  *(v6 + 96) = 0;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.googleDriveAppLaunchCount1W.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 88);
  if (*(v6 + 96))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A62694;
}

void sub_275A62694(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v10 = sub_275A72BF8(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 88) = v3;
  *(v7 + 96) = 0;

  free(v2);
}

BOOL ISOPB_SubscriptiondPetMessage.hasGoogleDriveAppLaunchCount1W.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return (*(v1 + 96) & 1) == 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearGoogleDriveAppLaunchCount1W()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v5 = sub_275A72BF8(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 88) = 0;
  *(v4 + 96) = 1;
}

uint64_t ISOPB_SubscriptiondPetMessage.googlePhotoAppLaunchCount1W.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  if (*(v1 + 112))
  {
    return 0;
  }

  else
  {
    return *(v1 + 104);
  }
}

uint64_t ISOPB_SubscriptiondPetMessage.googlePhotoAppLaunchCount1W.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v7 = sub_275A72BF8(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 104) = a1;
  *(v6 + 112) = 0;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.googlePhotoAppLaunchCount1W.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 104);
  if (*(v6 + 112))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A62A0C;
}

void sub_275A62A0C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v10 = sub_275A72BF8(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 104) = v3;
  *(v7 + 112) = 0;

  free(v2);
}

BOOL ISOPB_SubscriptiondPetMessage.hasGooglePhotoAppLaunchCount1W.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return (*(v1 + 112) & 1) == 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearGooglePhotoAppLaunchCount1W()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v5 = sub_275A72BF8(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 104) = 0;
  *(v4 + 112) = 1;
}

uint64_t ISOPB_SubscriptiondPetMessage.dropboxAppLaunchCount1W.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  if (*(v1 + 128))
  {
    return 0;
  }

  else
  {
    return *(v1 + 120);
  }
}

uint64_t ISOPB_SubscriptiondPetMessage.dropboxAppLaunchCount1W.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v7 = sub_275A72BF8(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 120) = a1;
  *(v6 + 128) = 0;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.dropboxAppLaunchCount1W.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 120);
  if (*(v6 + 128))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A62D84;
}

void sub_275A62D84(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v10 = sub_275A72BF8(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 120) = v3;
  *(v7 + 128) = 0;

  free(v2);
}

BOOL ISOPB_SubscriptiondPetMessage.hasDropboxAppLaunchCount1W.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return (*(v1 + 128) & 1) == 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearDropboxAppLaunchCount1W()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v5 = sub_275A72BF8(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 120) = 0;
  *(v4 + 128) = 1;
}

uint64_t ISOPB_SubscriptiondPetMessage.cameraAppLaunchCount1W.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  if (*(v1 + 144))
  {
    return 0;
  }

  else
  {
    return *(v1 + 136);
  }
}

uint64_t ISOPB_SubscriptiondPetMessage.cameraAppLaunchCount1W.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v7 = sub_275A72BF8(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 136) = a1;
  *(v6 + 144) = 0;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.cameraAppLaunchCount1W.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 136);
  if (*(v6 + 144))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A630FC;
}

void sub_275A630FC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v10 = sub_275A72BF8(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 136) = v3;
  *(v7 + 144) = 0;

  free(v2);
}

BOOL ISOPB_SubscriptiondPetMessage.hasCameraAppLaunchCount1W.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return (*(v1 + 144) & 1) == 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearCameraAppLaunchCount1W()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v5 = sub_275A72BF8(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 136) = 0;
  *(v4 + 144) = 1;
}

uint64_t ISOPB_SubscriptiondPetMessage.photosAppLaunchCount1W.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  if (*(v1 + 160))
  {
    return 0;
  }

  else
  {
    return *(v1 + 152);
  }
}

uint64_t ISOPB_SubscriptiondPetMessage.photosAppLaunchCount1W.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v7 = sub_275A72BF8(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 152) = a1;
  *(v6 + 160) = 0;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.photosAppLaunchCount1W.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 152);
  if (*(v6 + 160))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A63474;
}

void sub_275A63474(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v10 = sub_275A72BF8(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 152) = v3;
  *(v7 + 160) = 0;

  free(v2);
}

BOOL ISOPB_SubscriptiondPetMessage.hasPhotosAppLaunchCount1W.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return (*(v1 + 160) & 1) == 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearPhotosAppLaunchCount1W()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v5 = sub_275A72BF8(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 152) = 0;
  *(v4 + 160) = 1;
}

uint64_t ISOPB_SubscriptiondPetMessage.filesAppLaunchCount1W.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  if (*(v1 + 176))
  {
    return 0;
  }

  else
  {
    return *(v1 + 168);
  }
}

uint64_t ISOPB_SubscriptiondPetMessage.filesAppLaunchCount1W.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v7 = sub_275A72BF8(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 168) = a1;
  *(v6 + 176) = 0;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.filesAppLaunchCount1W.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 168);
  if (*(v6 + 176))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A637EC;
}

void sub_275A637EC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v10 = sub_275A72BF8(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 168) = v3;
  *(v7 + 176) = 0;

  free(v2);
}

BOOL ISOPB_SubscriptiondPetMessage.hasFilesAppLaunchCount1W.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return (*(v1 + 176) & 1) == 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearFilesAppLaunchCount1W()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v5 = sub_275A72BF8(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 168) = 0;
  *(v4 + 176) = 1;
}

uint64_t ISOPB_SubscriptiondPetMessage.totalNotificationCount1W.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  if (*(v1 + 192))
  {
    return 0;
  }

  else
  {
    return *(v1 + 184);
  }
}

uint64_t ISOPB_SubscriptiondPetMessage.totalNotificationCount1W.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v7 = sub_275A72BF8(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 184) = a1;
  *(v6 + 192) = 0;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.totalNotificationCount1W.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 184);
  if (*(v6 + 192))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A63B64;
}

void sub_275A63B64(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v10 = sub_275A72BF8(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 184) = v3;
  *(v7 + 192) = 0;

  free(v2);
}

BOOL ISOPB_SubscriptiondPetMessage.hasTotalNotificationCount1W.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return (*(v1 + 192) & 1) == 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearTotalNotificationCount1W()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v5 = sub_275A72BF8(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 184) = 0;
  *(v4 + 192) = 1;
}

uint64_t ISOPB_SubscriptiondPetMessage.totalOpenedNotificationCount1W.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  if (*(v1 + 208))
  {
    return 0;
  }

  else
  {
    return *(v1 + 200);
  }
}

uint64_t ISOPB_SubscriptiondPetMessage.totalOpenedNotificationCount1W.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v7 = sub_275A72BF8(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 200) = a1;
  *(v6 + 208) = 0;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.totalOpenedNotificationCount1W.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 200);
  if (*(v6 + 208))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A63EDC;
}

void sub_275A63EDC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v10 = sub_275A72BF8(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 200) = v3;
  *(v7 + 208) = 0;

  free(v2);
}

BOOL ISOPB_SubscriptiondPetMessage.hasTotalOpenedNotificationCount1W.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return (*(v1 + 208) & 1) == 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearTotalOpenedNotificationCount1W()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v5 = sub_275A72BF8(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 200) = 0;
  *(v4 + 208) = 1;
}

double ISOPB_SubscriptiondPetMessage.openedNotificationRatio1W.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  result = *(v1 + 216);
  if (*(v1 + 224))
  {
    return 0.0;
  }

  return result;
}

uint64_t ISOPB_SubscriptiondPetMessage.openedNotificationRatio1W.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v7 = sub_275A72BF8(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 216) = a1;
  *(v6 + 224) = 0;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.openedNotificationRatio1W.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 216);
  if (*(v6 + 224))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_275A6425C;
}

void sub_275A6425C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v10 = sub_275A72BF8(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 216) = v3;
  *(v7 + 224) = 0;

  free(v2);
}

BOOL ISOPB_SubscriptiondPetMessage.hasOpenedNotificationRatio1W.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return (*(v1 + 224) & 1) == 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearOpenedNotificationRatio1W()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v5 = sub_275A72BF8(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 216) = 0;
  *(v4 + 224) = 1;
}

double ISOPB_SubscriptiondPetMessage.openedIcloudNotificationRatio1W.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  result = *(v1 + 232);
  if (*(v1 + 240))
  {
    return 0.0;
  }

  return result;
}

uint64_t ISOPB_SubscriptiondPetMessage.openedIcloudNotificationRatio1W.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v7 = sub_275A72BF8(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 232) = a1;
  *(v6 + 240) = 0;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.openedIcloudNotificationRatio1W.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 232);
  if (*(v6 + 240))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_275A645DC;
}

void sub_275A645DC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v10 = sub_275A72BF8(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 232) = v3;
  *(v7 + 240) = 0;

  free(v2);
}

BOOL ISOPB_SubscriptiondPetMessage.hasOpenedIcloudNotificationRatio1W.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return (*(v1 + 240) & 1) == 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearOpenedIcloudNotificationRatio1W()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v5 = sub_275A72BF8(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 232) = 0;
  *(v4 + 240) = 1;
}

uint64_t ISOPB_SubscriptiondPetMessage.notificationUsageTypeTop1.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  if (*(v1 + 256))
  {
    v2 = *(v1 + 248);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t ISOPB_SubscriptiondPetMessage.notificationUsageTypeTop1.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v9 = sub_275A72BF8(v8);

    *(v3 + v6) = v9;
    v8 = v9;
  }

  swift_beginAccess();
  *(v8 + 248) = a1;
  *(v8 + 256) = a2;
}

void (*ISOPB_SubscriptiondPetMessage.notificationUsageTypeTop1.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 256))
  {
    v7 = *(v6 + 248);
    v8 = *(v6 + 256);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return sub_275A64988;
}

void sub_275A64988(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
      swift_allocObject();
      v11 = sub_275A72BF8(v8);

      *(v10 + v9) = v11;
      v8 = v11;
    }

    swift_beginAccess();
    *(v8 + 248) = v3;
    *(v8 + 256) = v5;
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v6 + v4);
    if ((v12 & 1) == 0)
    {
      v14 = *(v2 + 96);
      v15 = *(v2 + 88);
      type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
      swift_allocObject();
      v16 = sub_275A72BF8(v13);

      *(v15 + v14) = v16;
      v13 = v16;
    }

    swift_beginAccess();
    *(v13 + 248) = v3;
    *(v13 + 256) = v5;
  }

  free(v2);
}

BOOL ISOPB_SubscriptiondPetMessage.hasNotificationUsageTypeTop1.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return *(v1 + 256) != 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearNotificationUsageTypeTop1()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v5 = sub_275A72BF8(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 248) = 0;
  *(v4 + 256) = 0;
}

uint64_t ISOPB_SubscriptiondPetMessage.notificationUsageTypeTop2.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  if (*(v1 + 272))
  {
    v2 = *(v1 + 264);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t ISOPB_SubscriptiondPetMessage.notificationUsageTypeTop2.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v9 = sub_275A72BF8(v8);

    *(v3 + v6) = v9;
    v8 = v9;
  }

  swift_beginAccess();
  *(v8 + 264) = a1;
  *(v8 + 272) = a2;
}

void (*ISOPB_SubscriptiondPetMessage.notificationUsageTypeTop2.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 272))
  {
    v7 = *(v6 + 264);
    v8 = *(v6 + 272);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return sub_275A64DA4;
}

void sub_275A64DA4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
      swift_allocObject();
      v11 = sub_275A72BF8(v8);

      *(v10 + v9) = v11;
      v8 = v11;
    }

    swift_beginAccess();
    *(v8 + 264) = v3;
    *(v8 + 272) = v5;
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v6 + v4);
    if ((v12 & 1) == 0)
    {
      v14 = *(v2 + 96);
      v15 = *(v2 + 88);
      type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
      swift_allocObject();
      v16 = sub_275A72BF8(v13);

      *(v15 + v14) = v16;
      v13 = v16;
    }

    swift_beginAccess();
    *(v13 + 264) = v3;
    *(v13 + 272) = v5;
  }

  free(v2);
}

BOOL ISOPB_SubscriptiondPetMessage.hasNotificationUsageTypeTop2.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return *(v1 + 272) != 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearNotificationUsageTypeTop2()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v5 = sub_275A72BF8(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 264) = 0;
  *(v4 + 272) = 0;
}

uint64_t ISOPB_SubscriptiondPetMessage.notificationUsageTypeTop3.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  if (*(v1 + 288))
  {
    v2 = *(v1 + 280);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t ISOPB_SubscriptiondPetMessage.notificationUsageTypeTop3.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v9 = sub_275A72BF8(v8);

    *(v3 + v6) = v9;
    v8 = v9;
  }

  swift_beginAccess();
  *(v8 + 280) = a1;
  *(v8 + 288) = a2;
}

void (*ISOPB_SubscriptiondPetMessage.notificationUsageTypeTop3.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 288))
  {
    v7 = *(v6 + 280);
    v8 = *(v6 + 288);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return sub_275A651C0;
}

void sub_275A651C0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
      swift_allocObject();
      v11 = sub_275A72BF8(v8);

      *(v10 + v9) = v11;
      v8 = v11;
    }

    swift_beginAccess();
    *(v8 + 280) = v3;
    *(v8 + 288) = v5;
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v6 + v4);
    if ((v12 & 1) == 0)
    {
      v14 = *(v2 + 96);
      v15 = *(v2 + 88);
      type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
      swift_allocObject();
      v16 = sub_275A72BF8(v13);

      *(v15 + v14) = v16;
      v13 = v16;
    }

    swift_beginAccess();
    *(v13 + 280) = v3;
    *(v13 + 288) = v5;
  }

  free(v2);
}

BOOL ISOPB_SubscriptiondPetMessage.hasNotificationUsageTypeTop3.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return *(v1 + 288) != 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearNotificationUsageTypeTop3()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v5 = sub_275A72BF8(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 280) = 0;
  *(v4 + 288) = 0;
}

uint64_t ISOPB_SubscriptiondPetMessage.iCloudNotificationUsageTypeTop1.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  if (*(v1 + 304))
  {
    v2 = *(v1 + 296);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t ISOPB_SubscriptiondPetMessage.iCloudNotificationUsageTypeTop1.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v9 = sub_275A72BF8(v8);

    *(v3 + v6) = v9;
    v8 = v9;
  }

  swift_beginAccess();
  *(v8 + 296) = a1;
  *(v8 + 304) = a2;
}

void (*ISOPB_SubscriptiondPetMessage.iCloudNotificationUsageTypeTop1.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 304))
  {
    v7 = *(v6 + 296);
    v8 = *(v6 + 304);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return sub_275A655DC;
}

void sub_275A655DC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
      swift_allocObject();
      v11 = sub_275A72BF8(v8);

      *(v10 + v9) = v11;
      v8 = v11;
    }

    swift_beginAccess();
    *(v8 + 296) = v3;
    *(v8 + 304) = v5;
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v6 + v4);
    if ((v12 & 1) == 0)
    {
      v14 = *(v2 + 96);
      v15 = *(v2 + 88);
      type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
      swift_allocObject();
      v16 = sub_275A72BF8(v13);

      *(v15 + v14) = v16;
      v13 = v16;
    }

    swift_beginAccess();
    *(v13 + 296) = v3;
    *(v13 + 304) = v5;
  }

  free(v2);
}

BOOL ISOPB_SubscriptiondPetMessage.hasICloudNotificationUsageTypeTop1.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return *(v1 + 304) != 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearICloudNotificationUsageTypeTop1()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v5 = sub_275A72BF8(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 296) = 0;
  *(v4 + 304) = 0;
}

uint64_t ISOPB_SubscriptiondPetMessage.iCloudNotificationUsageTypeTop2.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  if (*(v1 + 320))
  {
    v2 = *(v1 + 312);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t ISOPB_SubscriptiondPetMessage.iCloudNotificationUsageTypeTop2.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v9 = sub_275A72BF8(v8);

    *(v3 + v6) = v9;
    v8 = v9;
  }

  swift_beginAccess();
  *(v8 + 312) = a1;
  *(v8 + 320) = a2;
}

void (*ISOPB_SubscriptiondPetMessage.iCloudNotificationUsageTypeTop2.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 320))
  {
    v7 = *(v6 + 312);
    v8 = *(v6 + 320);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return sub_275A659F8;
}

void sub_275A659F8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
      swift_allocObject();
      v11 = sub_275A72BF8(v8);

      *(v10 + v9) = v11;
      v8 = v11;
    }

    swift_beginAccess();
    *(v8 + 312) = v3;
    *(v8 + 320) = v5;
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v6 + v4);
    if ((v12 & 1) == 0)
    {
      v14 = *(v2 + 96);
      v15 = *(v2 + 88);
      type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
      swift_allocObject();
      v16 = sub_275A72BF8(v13);

      *(v15 + v14) = v16;
      v13 = v16;
    }

    swift_beginAccess();
    *(v13 + 312) = v3;
    *(v13 + 320) = v5;
  }

  free(v2);
}

BOOL ISOPB_SubscriptiondPetMessage.hasICloudNotificationUsageTypeTop2.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return *(v1 + 320) != 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearICloudNotificationUsageTypeTop2()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v5 = sub_275A72BF8(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 312) = 0;
  *(v4 + 320) = 0;
}

uint64_t ISOPB_SubscriptiondPetMessage.iCloudNotificationUsageTypeTop3.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  if (*(v1 + 336))
  {
    v2 = *(v1 + 328);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t ISOPB_SubscriptiondPetMessage.iCloudNotificationUsageTypeTop3.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v9 = sub_275A72BF8(v8);

    *(v3 + v6) = v9;
    v8 = v9;
  }

  swift_beginAccess();
  *(v8 + 328) = a1;
  *(v8 + 336) = a2;
}

void (*ISOPB_SubscriptiondPetMessage.iCloudNotificationUsageTypeTop3.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 336))
  {
    v7 = *(v6 + 328);
    v8 = *(v6 + 336);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return sub_275A65E14;
}

void sub_275A65E14(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
      swift_allocObject();
      v11 = sub_275A72BF8(v8);

      *(v10 + v9) = v11;
      v8 = v11;
    }

    swift_beginAccess();
    *(v8 + 328) = v3;
    *(v8 + 336) = v5;
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v6 + v4);
    if ((v12 & 1) == 0)
    {
      v14 = *(v2 + 96);
      v15 = *(v2 + 88);
      type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
      swift_allocObject();
      v16 = sub_275A72BF8(v13);

      *(v15 + v14) = v16;
      v13 = v16;
    }

    swift_beginAccess();
    *(v13 + 328) = v3;
    *(v13 + 336) = v5;
  }

  free(v2);
}

BOOL ISOPB_SubscriptiondPetMessage.hasICloudNotificationUsageTypeTop3.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return *(v1 + 336) != 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearICloudNotificationUsageTypeTop3()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v5 = sub_275A72BF8(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 328) = 0;
  *(v4 + 336) = 0;
}

double ISOPB_SubscriptiondPetMessage.mlServerScore.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  result = *(v1 + 344);
  if (*(v1 + 352))
  {
    return 0.0;
  }

  return result;
}

uint64_t ISOPB_SubscriptiondPetMessage.mlServerScore.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v7 = sub_275A72BF8(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 344) = a1;
  *(v6 + 352) = 0;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.mlServerScore.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 344);
  if (*(v6 + 352))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_275A66204;
}

void sub_275A66204(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v10 = sub_275A72BF8(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 344) = v3;
  *(v7 + 352) = 0;

  free(v2);
}

BOOL ISOPB_SubscriptiondPetMessage.hasMlServerScore.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return (*(v1 + 352) & 1) == 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearMlServerScore()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v5 = sub_275A72BF8(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 344) = 0;
  *(v4 + 352) = 1;
}

uint64_t ISOPB_SubscriptiondPetMessage.labelMessage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24720, &qword_275AE7EA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  v7 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__labelMessage;
  swift_beginAccess();
  sub_275A7445C(v6 + v7, v5);
  v8 = type metadata accessor for ISOPB_SubscriptionLabelMessage(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_275A744CC(v5, a1);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 8) = 1;
  *(a1 + *(v8 + 24)) = 3;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_275A5FE04(v5, &qword_280A24720, &qword_275AE7EA0);
  }

  return result;
}

uint64_t ISOPB_SubscriptiondPetMessage.labelMessage.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24720, &qword_275AE7EA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v10 = sub_275A72BF8(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_275A744CC(a1, v6);
  v11 = type metadata accessor for ISOPB_SubscriptionLabelMessage(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__labelMessage;
  swift_beginAccess();
  sub_275A74530(v6, v9 + v12);
  return swift_endAccess();
}

void (*ISOPB_SubscriptiondPetMessage.labelMessage.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24720, &qword_275AE7EA0) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for ISOPB_SubscriptionLabelMessage(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__labelMessage;
  swift_beginAccess();
  sub_275A7445C(v16 + v17, v8);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v19 = v14 + *(v9 + 20);
    *v19 = 0;
    *(v19 + 8) = 1;
    *(v14 + *(v9 + 24)) = 3;
    if (v18(v8, 1, v9) != 1)
    {
      sub_275A5FE04(v8, &qword_280A24720, &qword_275AE7EA0);
    }
  }

  else
  {
    sub_275A744CC(v8, v14);
  }

  return sub_275A668E0;
}

void sub_275A668E0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_275A745A0(*(v2 + 120), *(v2 + 112));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
      swift_allocObject();
      v9 = sub_275A72BF8(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_275A744CC(v11, v15);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__labelMessage;
    swift_beginAccess();
    sub_275A74530(v15, v6 + v16);
    swift_endAccess();
    sub_275A74604(v10);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
      swift_allocObject();
      v22 = sub_275A72BF8(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_275A744CC(v10, v15);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__labelMessage;
    swift_beginAccess();
    sub_275A74530(v15, v19 + v25);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL ISOPB_SubscriptiondPetMessage.hasLabelMessage.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24720, &qword_275AE7EA0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  v5 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__labelMessage;
  swift_beginAccess();
  sub_275A7445C(v4 + v5, v3);
  v6 = type metadata accessor for ISOPB_SubscriptionLabelMessage(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_275A5FE04(v3, &qword_280A24720, &qword_275AE7EA0);
  return v7;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearLabelMessage()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24720, &qword_275AE7EA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v8 = sub_275A72BF8(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for ISOPB_SubscriptionLabelMessage(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__labelMessage;
  swift_beginAccess();
  sub_275A74530(v4, v7 + v10);
  swift_endAccess();
}

void (*ISOPB_SubscriptiondPetMessage.diskStorageCapacityBytes.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__diskStorageCapacityBytes;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A66E04;
}

uint64_t sub_275A66E34(void *a1)
{
  v2 = (*(v1 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20)) + *a1);
  swift_beginAccess();
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_275A66EA4(uint64_t a1, void *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v9 = sub_275A72BF8(v8);

    *(v4 + v6) = v9;
    v8 = v9;
  }

  v10 = v8 + *a2;
  result = swift_beginAccess();
  *v10 = a1;
  *(v10 + 8) = 0;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.usedDiskCapacityBytes.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__usedDiskCapacityBytes;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A67010;
}

void sub_275A6701C(uint64_t *a1, char a2, void *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v4 + 88);
    v11 = *(v4 + 80);
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v12 = sub_275A72BF8(v9);

    *(v11 + v10) = v12;
    v9 = v12;
  }

  v13 = v9 + *a3;
  swift_beginAccess();
  *v13 = v5;
  *(v13 + 8) = 0;

  free(v4);
}

BOOL sub_275A6710C(void *a1)
{
  v2 = *(v1 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20)) + *a1;
  swift_beginAccess();
  return (*(v2 + 8) & 1) == 0;
}

uint64_t sub_275A67178(void *a1)
{
  v3 = v1;
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v7 = sub_275A72BF8(v6);

    *(v3 + v4) = v7;
    v6 = v7;
  }

  v8 = v6 + *a1;
  result = swift_beginAccess();
  *v8 = 0;
  *(v8 + 8) = 1;
  return result;
}

double ISOPB_SubscriptiondPetMessage.openedIcloudNotificationRatio2W.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20)) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedIcloudNotificationRatio2W;
  swift_beginAccess();
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t ISOPB_SubscriptiondPetMessage.openedIcloudNotificationRatio2W.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v7 = sub_275A72BF8(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  v8 = v6 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedIcloudNotificationRatio2W;
  result = swift_beginAccess();
  *v8 = a1;
  *(v8 + 8) = 0;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.openedIcloudNotificationRatio2W.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedIcloudNotificationRatio2W;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_275A67404;
}

void (*ISOPB_SubscriptiondPetMessage.trafficType.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__trafficType;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 3)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_275A674F0;
}

void (*ISOPB_SubscriptiondPetMessage.dailyScreenTimeSeconds.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__dailyScreenTimeSeconds;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A675E8;
}

void (*ISOPB_SubscriptiondPetMessage.avgWeeklyScreenTimeSeconds2W.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__avgWeeklyScreenTimeSeconds2W;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A676DC;
}

void (*ISOPB_SubscriptiondPetMessage.daemonVersion.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__daemonVersion;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A677D0;
}

void (*ISOPB_SubscriptiondPetMessage.obsoleteDayOfWeek.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__obsoleteDayOfWeek);
  swift_beginAccess();
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return sub_275A678D8;
}

uint64_t sub_275A67908(void *a1)
{
  v2 = (*(v1 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20)) + *a1);
  swift_beginAccess();
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_275A67990(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v8 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v11 = sub_275A72BF8(v10);

    *(v5 + v8) = v11;
    v10 = v11;
  }

  v12 = (v10 + *a3);
  swift_beginAccess();
  *v12 = a1;
  v12[1] = a2;
}

void (*ISOPB_SubscriptiondPetMessage.deviceModelName.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__deviceModelName);
  swift_beginAccess();
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return sub_275A67B20;
}

void sub_275A67B2C(uint64_t *a1, char a2, void *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 96);
  v7 = *(*a1 + 80);
  v8 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v8 + v6);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v4 + 96);
      v12 = *(v4 + 88);
      type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
      swift_allocObject();
      v13 = sub_275A72BF8(v10);

      *(v12 + v11) = v13;
      v10 = v13;
    }

    v14 = (v10 + *a3);
    swift_beginAccess();
    *v14 = v5;
    v14[1] = v7;
  }

  else
  {
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v8 + v6);
    if ((v15 & 1) == 0)
    {
      v17 = *(v4 + 96);
      v18 = *(v4 + 88);
      type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
      swift_allocObject();
      v19 = sub_275A72BF8(v16);

      *(v18 + v17) = v19;
      v16 = v19;
    }

    v20 = (v16 + *a3);
    swift_beginAccess();
    *v20 = v5;
    v20[1] = v7;
  }

  free(v4);
}

BOOL sub_275A67C94(void *a1)
{
  v2 = *(v1 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20)) + *a1;
  swift_beginAccess();
  return *(v2 + 8) != 0;
}

uint64_t sub_275A67D00(void *a1)
{
  v3 = v1;
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v7 = sub_275A72BF8(v6);

    *(v3 + v4) = v7;
    v6 = v7;
  }

  v8 = (v6 + *a1);
  swift_beginAccess();
  *v8 = 0;
  v8[1] = 0;
}

uint64_t ISOPB_SubscriptiondPetMessage.dayOfWeek.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  v2 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__dayOfWeek;
  swift_beginAccess();
  if (*(v1 + v2) == 8)
  {
    return 0;
  }

  else
  {
    return *(v1 + v2);
  }
}

uint64_t sub_275A67E1C(char a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v9 = sub_275A72BF8(v8);

    *(v4 + v6) = v9;
    v8 = v9;
  }

  v10 = *a2;
  result = swift_beginAccess();
  *(v8 + v10) = a1;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.dayOfWeek.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__dayOfWeek;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 8)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_275A67F78;
}

void sub_275A67F84(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 84);
  v6 = *(*a1 + 80);
  v7 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v4 + 80);
    v11 = *(v4 + 72);
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v12 = sub_275A72BF8(v9);

    *(v11 + v10) = v12;
    v9 = v12;
  }

  v13 = *a3;
  swift_beginAccess();
  *(v9 + v13) = v5;

  free(v4);
}

BOOL ISOPB_SubscriptiondPetMessage.hasDayOfWeek.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  v2 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__dayOfWeek;
  swift_beginAccess();
  return *(v1 + v2) != 8;
}

uint64_t sub_275A680CC(uint64_t *a1, char a2)
{
  v5 = v2;
  v6 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v9 = sub_275A72BF8(v8);

    *(v5 + v6) = v9;
    v8 = v9;
  }

  v10 = *a1;
  result = swift_beginAccess();
  *(v8 + v10) = a2;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.osVersionMajorVersion.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionMajorVersion;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A68248;
}

void (*ISOPB_SubscriptiondPetMessage.osVersionMinorVersion.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionMinorVersion;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A6833C;
}

void (*ISOPB_SubscriptiondPetMessage.osVersionPatchVersion.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionPatchVersion;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A68430;
}

void (*ISOPB_SubscriptiondPetMessage.offsetMins.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__offsetMins;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A68524;
}

uint64_t sub_275A68554(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  if (*(v3 + v4) == 3)
  {
    return 0;
  }

  else
  {
    return *(v3 + v4);
  }
}

void (*ISOPB_SubscriptiondPetMessage.icloudNotificationActionLabel.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__icloudNotificationActionLabel;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 3)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_275A6866C;
}

BOOL sub_275A68684(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  return *(v3 + v4) != 3;
}

void (*ISOPB_SubscriptiondPetMessage.minsUntilIcloudNotificationOpened.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudNotificationOpened;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A687C0;
}

void (*ISOPB_SubscriptiondPetMessage.appLaunchCountSameSlot.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCountSameSlot;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A688B4;
}

void (*ISOPB_SubscriptiondPetMessage.cameraLaunchCountSameSlot.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__cameraLaunchCountSameSlot;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A689A8;
}

void (*ISOPB_SubscriptiondPetMessage.photosLaunchCountSameSlot.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCountSameSlot;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A68A9C;
}

void (*ISOPB_SubscriptiondPetMessage.filesLaunchCountSameSlot.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__filesLaunchCountSameSlot;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A68B90;
}

void (*ISOPB_SubscriptiondPetMessage.isSleepModeOnSameSlot.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isSleepModeOnSameSlot;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return sub_275A68C78;
}

uint64_t sub_275A68CAC(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  return *(v3 + v4) & 1;
}

uint64_t sub_275A68D10(char a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v9 = sub_275A72BF8(v8);

    *(v4 + v6) = v9;
    v8 = v9;
  }

  v10 = *a2;
  result = swift_beginAccess();
  *(v8 + v10) = a1 & 1;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.isDoNotDisturbOnSameSlot.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDoNotDisturbOnSameSlot;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return sub_275A68E6C;
}

void sub_275A68E78(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 72);
  v7 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v4 + 80);
    v11 = *(v4 + 72);
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v12 = sub_275A72BF8(v9);

    *(v11 + v10) = v12;
    v9 = v12;
  }

  v13 = *a3;
  swift_beginAccess();
  *(v9 + v13) = v7;

  free(v4);
}

BOOL sub_275A68F5C(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  return *(v3 + v4) != 2;
}

void (*ISOPB_SubscriptiondPetMessage.isDrivingModeOnSameSlot.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDrivingModeOnSameSlot;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return sub_275A6908C;
}

void (*ISOPB_SubscriptiondPetMessage.numNotificationsSameSlot.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__numNotificationsSameSlot;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A69184;
}

void (*ISOPB_SubscriptiondPetMessage.numOpenedNotificationsSameSlot.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__numOpenedNotificationsSameSlot;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A69278;
}

void (*ISOPB_SubscriptiondPetMessage.minsSinceLastCameraAppLaunch1W.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastCameraAppLaunch1W;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A6936C;
}

void (*ISOPB_SubscriptiondPetMessage.minsSinceLastPhotosAppLaunch1W.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastPhotosAppLaunch1W;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A69460;
}

void (*ISOPB_SubscriptiondPetMessage.minsSinceLastFilesAppLaunch1W.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastFilesAppLaunch1W;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A69554;
}

void (*ISOPB_SubscriptiondPetMessage.isSleepModeOnCount2W.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isSleepModeOnCount2W;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A69648;
}

void (*ISOPB_SubscriptiondPetMessage.isDoNotDisturbOnCount2W.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDoNotDisturbOnCount2W;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A6973C;
}

void (*ISOPB_SubscriptiondPetMessage.isDrivingModeOnCount2W.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDrivingModeOnCount2W;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A69830;
}

void (*ISOPB_SubscriptiondPetMessage.appLaunchCount2WMedian.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCount2WMedian;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A69924;
}

void (*ISOPB_SubscriptiondPetMessage.appLaunchCount2WMax.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCount2WMax;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A69A18;
}

void (*ISOPB_SubscriptiondPetMessage.photosLaunchCount2WMedian.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCount2WMedian;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A69B0C;
}

void (*ISOPB_SubscriptiondPetMessage.photosLaunchCount2WMax.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCount2WMax;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A69C00;
}

void (*ISOPB_SubscriptiondPetMessage.totalNotificationCount2WMedian.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__totalNotificationCount2WMedian;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A69CF4;
}

void (*ISOPB_SubscriptiondPetMessage.totalNotificationCount2WMax.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__totalNotificationCount2WMax;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A69DE8;
}

void (*ISOPB_SubscriptiondPetMessage.openedNotificationCount2WMedian.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedNotificationCount2WMedian;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A69EDC;
}

void (*ISOPB_SubscriptiondPetMessage.openedNotificationCount2WMax.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedNotificationCount2WMax;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A69FD0;
}

void (*ISOPB_SubscriptiondPetMessage.buyLabel.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__buyLabel;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return sub_275A6A0B8;
}

void (*ISOPB_SubscriptiondPetMessage.minsUntilIcloudBuy.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudBuy;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A6A1B0;
}

void (*ISOPB_SubscriptiondPetMessage.openLabelSubStream.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openLabelSubStream;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return sub_275A6A298;
}

void (*ISOPB_SubscriptiondPetMessage.minsUntilIcloudOpenedSubStream.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudOpenedSubStream;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A6A390;
}

void (*ISOPB_SubscriptiondPetMessage.userTier.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__userTier;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 3)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_275A6A47C;
}

void (*ISOPB_SubscriptiondPetMessage.obsoleteTrafficType.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__obsoleteTrafficType;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 3)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_275A6A56C;
}

uint64_t sub_275A6A5BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A75640();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_275A6A614(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A755EC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_275A6A660@<X0>(unint64_t a1@<X0>, iCloudSubscriptionOptimizerCore::ISOPB_SubscriptiondPetMessage::DayOfWeek_optional *a2@<X8>)
{
  result = _s31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageV9DayOfWeekO8rawValueAESgSi_tcfC_0(a1);
  a2->value = result;
  return result;
}

unint64_t sub_275A6A688@<X0>(Swift::Int *a1@<X0>, iCloudSubscriptionOptimizerCore::ISOPB_SubscriptiondPetMessage::DayOfWeek_optional *a2@<X8>)
{
  result = _s31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageV9DayOfWeekO8rawValueAESgSi_tcfC_0(*a1);
  a2->value = result;
  return result;
}

uint64_t sub_275A6A6BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A75598();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_275A6A710(uint64_t a1, uint64_t a2)
{
  sub_275AE5B54();
  sub_275AE5644();
  return sub_275AE5B74();
}

uint64_t sub_275A6A774(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A75544();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_275A6A7C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_275AE5B54();
  sub_275AE5644();
  return sub_275AE5B74();
}

uint64_t ISOPB_SubscriptiondPetMessage.init()@<X0>(uint64_t a1@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  if (qword_280A24368 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_280A24718;
}

uint64_t sub_275A6A934()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static ISOPB_SubscriptionLabelMessage._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ISOPB_SubscriptionLabelMessage._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE7E70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "minsUntilICloudNotificationOpened";
  *(v6 + 8) = 33;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "label";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_275AE5554();
}

uint64_t ISOPB_SubscriptionLabelMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_275AE5344();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      type metadata accessor for ISOPB_SubscriptionLabelMessage(0);
      sub_275AE53B4();
    }

    else if (result == 2)
    {
      sub_275A6ABF0(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_275A6ABF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ISOPB_SubscriptionLabelMessage(0);
  sub_275A75694();
  return sub_275AE5374();
}

uint64_t ISOPB_SubscriptionLabelMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_275A6ACD4(v3, a1, a2, a3);
  if (!v4)
  {
    sub_275A6AD4C(v3, a1, a2, a3);
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275A6ACD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ISOPB_SubscriptionLabelMessage(0);
  if ((*(a1 + *(result + 20) + 8) & 1) == 0)
  {
    return sub_275AE54E4();
  }

  return result;
}

uint64_t sub_275A6AD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ISOPB_SubscriptionLabelMessage(0);
  if (*(a1 + *(result + 24)) != 3)
  {
    sub_275A75694();
    return sub_275AE54B4();
  }

  return result;
}

uint64_t sub_275A6AE24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v5 = *(a1 + 24);
  v6 = a2 + *(a1 + 20);
  *v6 = 0;
  *(v6 + 8) = 1;
  *(a2 + v5) = 3;
  return result;
}

uint64_t sub_275A6AEB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A74670(&qword_280A249E8, type metadata accessor for ISOPB_SubscriptionLabelMessage, &protocol conformance descriptor for ISOPB_SubscriptionLabelMessage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275A6AF54(uint64_t a1)
{
  sub_275A74670(&qword_280A24978, type metadata accessor for ISOPB_SubscriptionLabelMessage, &protocol conformance descriptor for ISOPB_SubscriptionLabelMessage);

  return sub_275AE5464();
}

uint64_t sub_275A6AFC0(uint64_t a1, uint64_t a2)
{
  sub_275A74670(&qword_280A24978, type metadata accessor for ISOPB_SubscriptionLabelMessage, &protocol conformance descriptor for ISOPB_SubscriptionLabelMessage);

  return sub_275AE5474();
}

uint64_t sub_275A6B0E0()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static ISOPB_SubscriptiondPetMessage._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ISOPB_SubscriptiondPetMessage._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v145 = swift_allocObject();
  *(v145 + 16) = xmmword_275AE7E80;
  v4 = v145 + v3;
  v5 = v145 + v3 + v1[14];
  *(v145 + v3) = 1;
  *v5 = "timestampMillis";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_275AE5544();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v145 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "hourOfDay";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v145 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "lastOpenedAppId24h";
  *(v11 + 1) = 18;
  v11[16] = 2;
  v8();
  v12 = (v145 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "lastOpenedAppHour24h";
  *(v13 + 1) = 20;
  v13[16] = 2;
  v8();
  v14 = (v145 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "isSleepModeOn";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v8();
  v16 = (v145 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "isDoNotDisturbOn";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v145 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "isDrivingModeOn";
  *(v19 + 1) = 15;
  v19[16] = 2;
  v8();
  v20 = (v145 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "openedNotificationRatio24h";
  *(v21 + 1) = 26;
  v21[16] = 2;
  v8();
  v22 = v145 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "googleDriveAppLaunchCount1w";
  *(v22 + 8) = 27;
  *(v22 + 16) = 2;
  v8();
  v23 = (v145 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "googlePhotoAppLaunchCount1w";
  *(v24 + 1) = 27;
  v24[16] = 2;
  v8();
  v25 = (v145 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "dropboxAppLaunchCount1w";
  *(v26 + 1) = 23;
  v26[16] = 2;
  v8();
  v27 = (v145 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "cameraAppLaunchCount1w";
  *(v28 + 1) = 22;
  v28[16] = 2;
  v8();
  v29 = (v145 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "photosAppLaunchCount1w";
  *(v30 + 1) = 22;
  v30[16] = 2;
  v8();
  v31 = (v145 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "filesAppLaunchCount1w";
  *(v32 + 1) = 21;
  v32[16] = 2;
  v8();
  v33 = (v145 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "totalNotificationCount1w";
  *(v34 + 1) = 24;
  v34[16] = 2;
  v8();
  v35 = (v145 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "totalOpenedNotificationCount1w";
  *(v36 + 1) = 30;
  v36[16] = 2;
  v8();
  v37 = v145 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "openedNotificationRatio1w";
  *(v37 + 8) = 25;
  *(v37 + 16) = 2;
  v8();
  v38 = (v145 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "openedICloudNotificationRatio1w";
  *(v39 + 1) = 31;
  v39[16] = 2;
  v8();
  v40 = (v145 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "notificationUsageTypeTop1";
  *(v41 + 1) = 25;
  v41[16] = 2;
  v8();
  v42 = (v145 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 20;
  *v43 = "notificationUsageTypeTop2";
  *(v43 + 1) = 25;
  v43[16] = 2;
  v8();
  v44 = (v145 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 21;
  *v45 = "notificationUsageTypeTop3";
  *(v45 + 1) = 25;
  v45[16] = 2;
  v8();
  v46 = (v145 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 22;
  *v47 = "iCloudNotificationUsageTypeTop1";
  *(v47 + 1) = 31;
  v47[16] = 2;
  v8();
  v48 = (v145 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 23;
  *v49 = "iCloudNotificationUsageTypeTop2";
  *(v49 + 1) = 31;
  v49[16] = 2;
  v8();
  v50 = (v145 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 24;
  *v51 = "iCloudNotificationUsageTypeTop3";
  *(v51 + 1) = 31;
  v51[16] = 2;
  v8();
  v52 = (v145 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 25;
  *v53 = "mlServerScore";
  *(v53 + 1) = 13;
  v53[16] = 2;
  v8();
  v54 = (v145 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 26;
  *v55 = "labelMessage";
  *(v55 + 1) = 12;
  v55[16] = 2;
  v8();
  v56 = (v145 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 27;
  *v57 = "diskStorageCapacityBytes";
  *(v57 + 1) = 24;
  v57[16] = 2;
  v8();
  v58 = (v145 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 28;
  *v59 = "usedDiskCapacityBytes";
  *(v59 + 1) = 21;
  v59[16] = 2;
  v8();
  v60 = (v145 + v3 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 29;
  *v61 = "openedICloudNotificationRatio2w";
  *(v61 + 1) = 31;
  v61[16] = 2;
  v8();
  v62 = (v145 + v3 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 30;
  *v63 = "trafficType";
  *(v63 + 1) = 11;
  v63[16] = 2;
  v8();
  v64 = (v145 + v3 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 31;
  *v65 = "dailyScreenTimeSeconds";
  *(v65 + 1) = 22;
  v65[16] = 2;
  v8();
  v66 = (v145 + v3 + 31 * v2);
  v67 = v66 + v1[14];
  *v66 = 32;
  *v67 = "avgWeeklyScreenTimeSeconds2w";
  *(v67 + 1) = 28;
  v67[16] = 2;
  v8();
  v68 = v145 + v3 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 33;
  *v68 = "daemonVersion";
  *(v68 + 8) = 13;
  *(v68 + 16) = 2;
  v8();
  v69 = (v145 + v3 + 33 * v2);
  v70 = v69 + v1[14];
  *v69 = 34;
  *v70 = "OBSOLETE_dayOfWeek";
  *(v70 + 1) = 18;
  v70[16] = 2;
  v8();
  v71 = (v145 + v3 + 34 * v2);
  v72 = v71 + v1[14];
  *v71 = 35;
  *v72 = "deviceModelName";
  *(v72 + 1) = 15;
  v72[16] = 2;
  v8();
  v73 = (v145 + v3 + 35 * v2);
  v74 = v73 + v1[14];
  *v73 = 36;
  *v74 = "dayOfWeek";
  *(v74 + 1) = 9;
  v74[16] = 2;
  v8();
  v75 = (v145 + v3 + 36 * v2);
  v76 = v75 + v1[14];
  *v75 = 37;
  *v76 = "osVersionMajorVersion";
  *(v76 + 1) = 21;
  v76[16] = 2;
  v8();
  v77 = (v145 + v3 + 37 * v2);
  v78 = v77 + v1[14];
  *v77 = 38;
  *v78 = "osVersionMinorVersion";
  *(v78 + 1) = 21;
  v78[16] = 2;
  v8();
  v79 = (v145 + v3 + 38 * v2);
  v80 = v79 + v1[14];
  *v79 = 39;
  *v80 = "osVersionPatchVersion";
  *(v80 + 1) = 21;
  v80[16] = 2;
  v8();
  v81 = (v145 + v3 + 39 * v2);
  v82 = v81 + v1[14];
  *v81 = 40;
  *v82 = "offsetMins";
  *(v82 + 1) = 10;
  v82[16] = 2;
  v8();
  v83 = (v145 + v3 + 40 * v2);
  v84 = v83 + v1[14];
  *v83 = 41;
  *v84 = "icloudNotificationActionLabel";
  *(v84 + 1) = 29;
  v84[16] = 2;
  v8();
  v85 = (v145 + v3 + 41 * v2);
  v86 = v85 + v1[14];
  *v85 = 42;
  *v86 = "minsUntilICloudNotificationOpened";
  *(v86 + 1) = 33;
  v86[16] = 2;
  v8();
  v87 = (v145 + v3 + 42 * v2);
  v88 = v87 + v1[14];
  *v87 = 43;
  *v88 = "appLaunchCountSameSlot";
  *(v88 + 1) = 22;
  v88[16] = 2;
  v8();
  v89 = (v145 + v3 + 43 * v2);
  v90 = v89 + v1[14];
  *v89 = 44;
  *v90 = "cameraLaunchCountSameSlot";
  *(v90 + 1) = 25;
  v90[16] = 2;
  v8();
  v91 = (v145 + v3 + 44 * v2);
  v92 = v91 + v1[14];
  *v91 = 45;
  *v92 = "photosLaunchCountSameSlot";
  *(v92 + 1) = 25;
  v92[16] = 2;
  v8();
  v93 = (v145 + v3 + 45 * v2);
  v94 = v93 + v1[14];
  *v93 = 46;
  *v94 = "filesLaunchCountSameSlot";
  *(v94 + 1) = 24;
  v94[16] = 2;
  v8();
  v95 = (v145 + v3 + 46 * v2);
  v96 = v95 + v1[14];
  *v95 = 47;
  *v96 = "isSleepModeOnSameSlot";
  *(v96 + 1) = 21;
  v96[16] = 2;
  v8();
  v97 = (v145 + v3 + 47 * v2);
  v98 = v97 + v1[14];
  *v97 = 48;
  *v98 = "isDoNotDisturbOnSameSlot";
  *(v98 + 1) = 24;
  v98[16] = 2;
  v8();
  v99 = (v145 + v3 + 48 * v2);
  v100 = v99 + v1[14];
  *v99 = 49;
  *v100 = "isDrivingModeOnSameSlot";
  *(v100 + 1) = 23;
  v100[16] = 2;
  v8();
  v101 = (v145 + v3 + 49 * v2);
  v102 = v101 + v1[14];
  *v101 = 50;
  *v102 = "numNotificationsSameSlot";
  *(v102 + 1) = 24;
  v102[16] = 2;
  v8();
  v103 = (v145 + v3 + 50 * v2);
  v104 = v103 + v1[14];
  *v103 = 51;
  *v104 = "numOpenedNotificationsSameSlot";
  *(v104 + 1) = 30;
  v104[16] = 2;
  v8();
  v105 = (v145 + v3 + 51 * v2);
  v106 = v105 + v1[14];
  *v105 = 52;
  *v106 = "minsSinceLastCameraAppLaunch1w";
  *(v106 + 1) = 30;
  v106[16] = 2;
  v8();
  v107 = (v145 + v3 + 52 * v2);
  v108 = v107 + v1[14];
  *v107 = 53;
  *v108 = "minsSinceLastPhotosAppLaunch1w";
  *(v108 + 1) = 30;
  v108[16] = 2;
  v8();
  v109 = (v145 + v3 + 53 * v2);
  v110 = v109 + v1[14];
  *v109 = 54;
  *v110 = "minsSinceLastFilesAppLaunch1w";
  *(v110 + 1) = 29;
  v110[16] = 2;
  v8();
  v111 = (v145 + v3 + 54 * v2);
  v112 = v111 + v1[14];
  *v111 = 55;
  *v112 = "isSleepModeOnCount2w";
  *(v112 + 1) = 20;
  v112[16] = 2;
  v8();
  v113 = (v145 + v3 + 55 * v2);
  v114 = v113 + v1[14];
  *v113 = 56;
  *v114 = "isDoNotDisturbOnCount2w";
  *(v114 + 1) = 23;
  v114[16] = 2;
  v8();
  v115 = (v145 + v3 + 56 * v2);
  v116 = v115 + v1[14];
  *v115 = 57;
  *v116 = "isDrivingModeOnCount2w";
  *(v116 + 1) = 22;
  v116[16] = 2;
  v8();
  v117 = (v145 + v3 + 57 * v2);
  v118 = v117 + v1[14];
  *v117 = 58;
  *v118 = "appLaunchCount2wMedian";
  *(v118 + 1) = 22;
  v118[16] = 2;
  v8();
  v119 = (v145 + v3 + 58 * v2);
  v120 = v119 + v1[14];
  *v119 = 59;
  *v120 = "appLaunchCount2wMax";
  *(v120 + 1) = 19;
  v120[16] = 2;
  v8();
  v121 = (v145 + v3 + 59 * v2);
  v122 = v121 + v1[14];
  *v121 = 60;
  *v122 = "photosLaunchCount2wMedian";
  *(v122 + 1) = 25;
  v122[16] = 2;
  v8();
  v123 = (v145 + v3 + 60 * v2);
  v124 = v123 + v1[14];
  *v123 = 61;
  *v124 = "photosLaunchCount2wMax";
  *(v124 + 1) = 22;
  v124[16] = 2;
  v8();
  v125 = (v145 + v3 + 61 * v2);
  v126 = v125 + v1[14];
  *v125 = 62;
  *v126 = "totalNotificationCount2wMedian";
  *(v126 + 1) = 30;
  v126[16] = 2;
  v8();
  v127 = (v145 + v3 + 62 * v2);
  v128 = v127 + v1[14];
  *v127 = 63;
  *v128 = "totalNotificationCount2wMax";
  *(v128 + 1) = 27;
  v128[16] = 2;
  v8();
  v129 = (v145 + v3 + 63 * v2);
  v130 = v129 + v1[14];
  *v129 = 64;
  *v130 = "openedNotificationCount2wMedian";
  *(v130 + 1) = 31;
  v130[16] = 2;
  v8();
  v131 = v145 + v3 + (v2 << 6) + v1[14];
  *(v4 + (v2 << 6)) = 65;
  *v131 = "openedNotificationCount2wMax";
  *(v131 + 8) = 28;
  *(v131 + 16) = 2;
  v8();
  v132 = (v145 + v3 + 65 * v2);
  v133 = v132 + v1[14];
  *v132 = 66;
  *v133 = "buyLabel";
  *(v133 + 1) = 8;
  v133[16] = 2;
  v8();
  v134 = (v145 + v3 + 66 * v2);
  v135 = v134 + v1[14];
  *v134 = 67;
  *v135 = "minsUntilICloudBuy";
  *(v135 + 1) = 18;
  v135[16] = 2;
  v8();
  v136 = (v145 + v3 + 67 * v2);
  v137 = v136 + v1[14];
  *v136 = 68;
  *v137 = "openLabelSubStream";
  *(v137 + 1) = 18;
  v137[16] = 2;
  v8();
  v138 = (v145 + v3 + 68 * v2);
  v139 = v138 + v1[14];
  *v138 = 69;
  *v139 = "minsUntilICloudOpenedSubStream";
  *(v139 + 1) = 30;
  v139[16] = 2;
  v8();
  v140 = (v145 + v3 + 69 * v2);
  v141 = v140 + v1[14];
  *v140 = 70;
  *v141 = "userTier";
  *(v141 + 1) = 8;
  v141[16] = 2;
  v8();
  v142 = (v145 + v3 + 70 * v2);
  v143 = v142 + v1[14];
  *v142 = 100;
  *v143 = "OBSOLETE_trafficType";
  *(v143 + 1) = 20;
  v143[16] = 2;
  v8();
  return sub_275AE5554();
}

uint64_t sub_275A6C358()
{
  type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
  swift_allocObject();
  result = sub_275A6C398();
  qword_280A24718 = result;
  return result;
}

uint64_t sub_275A6C398()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 28) = 0;
  *(v0 + 32) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 40) = 0;
  *(v0 + 64) = 1;
  *(v0 + 65) = 514;
  *(v0 + 67) = 2;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  *(v0 + 88) = 0;
  *(v0 + 96) = 1;
  *(v0 + 104) = 0;
  *(v0 + 112) = 1;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  *(v0 + 136) = 0;
  *(v0 + 144) = 1;
  *(v0 + 152) = 0;
  *(v0 + 160) = 1;
  *(v0 + 168) = 0;
  *(v0 + 176) = 1;
  *(v0 + 184) = 0;
  *(v0 + 192) = 1;
  *(v0 + 200) = 0;
  *(v0 + 208) = 1;
  *(v0 + 216) = 0;
  *(v0 + 224) = 1;
  *(v0 + 232) = 0;
  *(v0 + 240) = 1;
  *(v0 + 344) = 0;
  *(v0 + 248) = 0u;
  *(v0 + 312) = 0u;
  *(v0 + 328) = 0u;
  *(v0 + 280) = 0u;
  *(v0 + 296) = 0u;
  *(v0 + 264) = 0u;
  *(v0 + 352) = 1;
  v1 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__labelMessage;
  v2 = type metadata accessor for ISOPB_SubscriptionLabelMessage(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__diskStorageCapacityBytes;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__usedDiskCapacityBytes;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedIcloudNotificationRatio2W;
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__trafficType) = 3;
  v6 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__dailyScreenTimeSeconds;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__avgWeeklyScreenTimeSeconds2W;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__daemonVersion;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = (v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__obsoleteDayOfWeek);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__deviceModelName);
  *v10 = 0;
  v10[1] = 0;
  *(v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__dayOfWeek) = 8;
  v11 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionMajorVersion;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionMinorVersion;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionPatchVersion;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__offsetMins;
  *v14 = 0;
  *(v14 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__icloudNotificationActionLabel) = 3;
  v15 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudNotificationOpened;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCountSameSlot;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__cameraLaunchCountSameSlot;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCountSameSlot;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__filesLaunchCountSameSlot;
  *v19 = 0;
  *(v19 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isSleepModeOnSameSlot) = 2;
  *(v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDoNotDisturbOnSameSlot) = 2;
  *(v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDrivingModeOnSameSlot) = 2;
  v20 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__numNotificationsSameSlot;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__numOpenedNotificationsSameSlot;
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastCameraAppLaunch1W;
  *v22 = 0;
  *(v22 + 8) = 1;
  v23 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastPhotosAppLaunch1W;
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastFilesAppLaunch1W;
  *v24 = 0;
  *(v24 + 8) = 1;
  v25 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isSleepModeOnCount2W;
  *v25 = 0;
  *(v25 + 8) = 1;
  v26 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDoNotDisturbOnCount2W;
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDrivingModeOnCount2W;
  *v27 = 0;
  *(v27 + 8) = 1;
  v28 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCount2WMedian;
  *v28 = 0;
  *(v28 + 8) = 1;
  v29 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCount2WMax;
  *v29 = 0;
  *(v29 + 8) = 1;
  v30 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCount2WMedian;
  *v30 = 0;
  *(v30 + 8) = 1;
  v31 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCount2WMax;
  *v31 = 0;
  *(v31 + 8) = 1;
  v32 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__totalNotificationCount2WMedian;
  *v32 = 0;
  *(v32 + 8) = 1;
  v33 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__totalNotificationCount2WMax;
  *v33 = 0;
  *(v33 + 8) = 1;
  v34 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedNotificationCount2WMedian;
  *v34 = 0;
  *(v34 + 8) = 1;
  v35 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedNotificationCount2WMax;
  *v35 = 0;
  *(v35 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__buyLabel) = 2;
  v36 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudBuy;
  *v36 = 0;
  *(v36 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openLabelSubStream) = 2;
  v37 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudOpenedSubStream;
  *v37 = 0;
  *(v37 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__userTier) = 3;
  *(v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__obsoleteTrafficType) = 3;
  return v0;
}

void *sub_275A6C7E4()
{

  sub_275A5FE04(v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__labelMessage, &qword_280A24720, &qword_275AE7EA0);

  return v0;
}

uint64_t sub_275A6C87C()
{
  sub_275A6C7E4();

  return swift_deallocClassInstance();
}

uint64_t ISOPB_SubscriptiondPetMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    swift_allocObject();
    v12 = sub_275A72BF8(v11);

    *(v4 + v8) = v12;
    v10 = v12;
  }

  return sub_275A6C984(v10, a1, a2, a3);
}

uint64_t sub_275A6C984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_275AE5344();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      switch(result)
      {
        case 1:
          sub_275A5CFAC(a2, a1, a3, a4);
          goto LABEL_5;
        case 2:
          sub_275A6D124(a2, a1, a3, a4);
          goto LABEL_5;
        case 3:
          sub_275A6D1A8(a2, a1, a3, a4);
          goto LABEL_5;
        case 4:
          sub_275A6D22C(a2, a1, a3, a4);
          goto LABEL_5;
        case 5:
          sub_275A6D2B0(a2, a1, a3, a4);
          goto LABEL_5;
        case 6:
          sub_275A6D334(a2, a1, a3, a4);
          goto LABEL_5;
        case 7:
          sub_275A6D3B8(a2, a1, a3, a4);
          goto LABEL_5;
        case 8:
          sub_275A6D43C(a2, a1, a3, a4);
          goto LABEL_5;
        case 9:
          sub_275A6D4C0(a2, a1, a3, a4);
          goto LABEL_5;
        case 10:
          sub_275A6D544(a2, a1, a3, a4);
          goto LABEL_5;
        case 11:
          sub_275A6D5C8(a2, a1, a3, a4);
          goto LABEL_5;
        case 12:
          sub_275A6D64C(a2, a1, a3, a4);
          goto LABEL_5;
        case 13:
          sub_275A6D6D0(a2, a1, a3, a4);
          goto LABEL_5;
        case 14:
          sub_275A6D754(a2, a1, a3, a4);
          goto LABEL_5;
        case 15:
          sub_275A6D7D8(a2, a1, a3, a4);
          goto LABEL_5;
        case 16:
          sub_275A6D85C(a2, a1, a3, a4);
          goto LABEL_5;
        case 17:
          sub_275A6D8E0(a2, a1, a3, a4);
          goto LABEL_5;
        case 18:
          sub_275A6D964(a2, a1, a3, a4);
          goto LABEL_5;
        case 19:
          sub_275A6D9E8(a2, a1, a3, a4);
          goto LABEL_5;
        case 20:
          sub_275A6DA6C(a2, a1, a3, a4);
          goto LABEL_5;
        case 21:
          sub_275A6DAF0(a2, a1, a3, a4);
          goto LABEL_5;
        case 22:
          sub_275A6DB74(a2, a1, a3, a4);
          goto LABEL_5;
        case 23:
          sub_275A6DBF8(a2, a1, a3, a4);
          goto LABEL_5;
        case 24:
          sub_275A6DC7C(a2, a1, a3, a4);
          goto LABEL_5;
        case 25:
          sub_275A6DD00(a2, a1, a3, a4);
          goto LABEL_5;
        case 26:
          sub_275A6DD84(a2, a1, a3, a4);
          goto LABEL_5;
        case 27:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__diskStorageCapacityBytes;
          goto LABEL_76;
        case 28:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__usedDiskCapacityBytes;
          goto LABEL_76;
        case 29:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedIcloudNotificationRatio2W;
          v17 = MEMORY[0x277D217C0];
          goto LABEL_77;
        case 30:
          v13 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__trafficType;
          v14 = &type metadata for ISOPB_SubscriptiondPetMessage.TrafficType;
          v15 = sub_275A75640;
          goto LABEL_65;
        case 31:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__dailyScreenTimeSeconds;
          goto LABEL_76;
        case 32:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__avgWeeklyScreenTimeSeconds2W;
          goto LABEL_76;
        case 33:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__daemonVersion;
          goto LABEL_76;
        case 34:
          v16 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__obsoleteDayOfWeek;
          goto LABEL_22;
        case 35:
          v16 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__deviceModelName;
LABEL_22:
          sub_275A6DE60(a2, a1, a3, a4, v16);
          goto LABEL_5;
        case 36:
          v13 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__dayOfWeek;
          v14 = &type metadata for ISOPB_SubscriptiondPetMessage.DayOfWeek;
          v15 = sub_275A755EC;
          goto LABEL_65;
        case 37:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionMajorVersion;
          goto LABEL_76;
        case 38:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionMinorVersion;
          goto LABEL_76;
        case 39:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionPatchVersion;
          goto LABEL_76;
        case 40:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__offsetMins;
          goto LABEL_76;
        case 41:
          v13 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__icloudNotificationActionLabel;
          v14 = &type metadata for ISOPB_SubscriptiondPetMessage.ICloudNotificationActionLabel;
          v15 = sub_275A75598;
LABEL_65:
          v18 = v15;
          v19 = a2;
          v20 = a1;
          v21 = a3;
          v22 = a4;
          goto LABEL_66;
        case 42:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudNotificationOpened;
          goto LABEL_76;
        case 43:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCountSameSlot;
          goto LABEL_76;
        case 44:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__cameraLaunchCountSameSlot;
          goto LABEL_76;
        case 45:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCountSameSlot;
          goto LABEL_76;
        case 46:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__filesLaunchCountSameSlot;
          goto LABEL_76;
        case 47:
          v12 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isSleepModeOnSameSlot;
          goto LABEL_73;
        case 48:
          v12 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDoNotDisturbOnSameSlot;
          goto LABEL_73;
        case 49:
          v12 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDrivingModeOnSameSlot;
LABEL_73:
          v23 = a2;
          v24 = a1;
          v25 = a3;
          v26 = a4;
          goto LABEL_74;
        case 50:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__numNotificationsSameSlot;
          goto LABEL_76;
        case 51:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__numOpenedNotificationsSameSlot;
          goto LABEL_76;
        case 52:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastCameraAppLaunch1W;
          goto LABEL_76;
        case 53:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastPhotosAppLaunch1W;
          goto LABEL_76;
        case 54:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastFilesAppLaunch1W;
          goto LABEL_76;
        case 55:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isSleepModeOnCount2W;
          goto LABEL_76;
        case 56:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDoNotDisturbOnCount2W;
          goto LABEL_76;
        case 57:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDrivingModeOnCount2W;
          goto LABEL_76;
        case 58:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCount2WMedian;
          goto LABEL_76;
        case 59:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCount2WMax;
          goto LABEL_76;
        case 60:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCount2WMedian;
          goto LABEL_76;
        case 61:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCount2WMax;
          goto LABEL_76;
        case 62:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__totalNotificationCount2WMedian;
          goto LABEL_76;
        case 63:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__totalNotificationCount2WMax;
          goto LABEL_76;
        case 64:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedNotificationCount2WMedian;
LABEL_76:
          v17 = MEMORY[0x277D21790];
LABEL_77:
          v27 = v17;
          v28 = a2;
          v29 = a1;
          v30 = a3;
          v31 = a4;
          goto LABEL_78;
        default:
          if (result <= 67)
          {
            switch(result)
            {
              case 'A':
                v27 = MEMORY[0x277D21790];
                v28 = a2;
                v29 = a1;
                v30 = a3;
                v31 = a4;
                v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedNotificationCount2WMax;
                goto LABEL_78;
              case 'B':
                v23 = a2;
                v24 = a1;
                v25 = a3;
                v26 = a4;
                v12 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__buyLabel;
                goto LABEL_74;
              case 'C':
                v27 = MEMORY[0x277D21790];
                v28 = a2;
                v29 = a1;
                v30 = a3;
                v31 = a4;
                v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudBuy;
LABEL_78:
                sub_275A6DF70(v28, v29, v30, v31, v11, v27);
                break;
            }
          }

          else
          {
            if (result <= 69)
            {
              if (result == 68)
              {
                v23 = a2;
                v24 = a1;
                v25 = a3;
                v26 = a4;
                v12 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openLabelSubStream;
LABEL_74:
                sub_275A6DEE8(v23, v24, v25, v26, v12);
                goto LABEL_5;
              }

              v27 = MEMORY[0x277D21790];
              v28 = a2;
              v29 = a1;
              v30 = a3;
              v31 = a4;
              v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudOpenedSubStream;
              goto LABEL_78;
            }

            if (result == 70)
            {
              v18 = sub_275A75544;
              v19 = a2;
              v20 = a1;
              v21 = a3;
              v22 = a4;
              v13 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__userTier;
              v14 = &type metadata for ISOPB_SubscriptiondPetMessage.UserTier;
              goto LABEL_66;
            }

            if (result == 100)
            {
              v18 = sub_275A75640;
              v19 = a2;
              v20 = a1;
              v21 = a3;
              v22 = a4;
              v13 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__obsoleteTrafficType;
              v14 = &type metadata for ISOPB_SubscriptiondPetMessage.TrafficType;
LABEL_66:
              sub_275A6E008(v19, v20, v21, v22, v13, v18, v14);
            }
          }

LABEL_5:
          result = sub_275AE5344();
          break;
      }
    }
  }

  return result;
}

uint64_t sub_275A6D124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_275AE53A4();
  return swift_endAccess();
}

uint64_t sub_275A6D1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_275AE53E4();
  return swift_endAccess();
}

uint64_t sub_275A6D22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_275AE53B4();
  return swift_endAccess();
}

uint64_t sub_275A6D2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_275AE5364();
  return swift_endAccess();
}

uint64_t sub_275A6D334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_275AE5364();
  return swift_endAccess();
}

uint64_t sub_275A6D3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_275AE5364();
  return swift_endAccess();
}

uint64_t sub_275A6D43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_275AE53D4();
  return swift_endAccess();
}

uint64_t sub_275A6D4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_275AE53B4();
  return swift_endAccess();
}

uint64_t sub_275A6D544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_275AE53B4();
  return swift_endAccess();
}

uint64_t sub_275A6D5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_275AE53B4();
  return swift_endAccess();
}

uint64_t sub_275A6D64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_275AE53B4();
  return swift_endAccess();
}

uint64_t sub_275A6D6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_275AE53B4();
  return swift_endAccess();
}

uint64_t sub_275A6D754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_275AE53B4();
  return swift_endAccess();
}

uint64_t sub_275A6D7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_275AE53B4();
  return swift_endAccess();
}

uint64_t sub_275A6D85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_275AE53B4();
  return swift_endAccess();
}

uint64_t sub_275A6D8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_275AE53D4();
  return swift_endAccess();
}

uint64_t sub_275A6D964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_275AE53D4();
  return swift_endAccess();
}

uint64_t sub_275A6D9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_275AE53E4();
  return swift_endAccess();
}

uint64_t sub_275A6DA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_275AE53E4();
  return swift_endAccess();
}

uint64_t sub_275A6DAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_275AE53E4();
  return swift_endAccess();
}

uint64_t sub_275A6DB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_275AE53E4();
  return swift_endAccess();
}

uint64_t sub_275A6DBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_275AE53E4();
  return swift_endAccess();
}

uint64_t sub_275A6DC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_275AE53E4();
  return swift_endAccess();
}

uint64_t sub_275A6DD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_275AE53D4();
  return swift_endAccess();
}

uint64_t sub_275A6DD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for ISOPB_SubscriptionLabelMessage(0);
  sub_275A74670(&qword_280A24978, type metadata accessor for ISOPB_SubscriptionLabelMessage, &protocol conformance descriptor for ISOPB_SubscriptionLabelMessage);
  sub_275AE5404();
  return swift_endAccess();
}

uint64_t sub_275A6DE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  sub_275AE53E4();
  return swift_endAccess();
}

uint64_t sub_275A6DEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  sub_275AE5364();
  return swift_endAccess();
}

uint64_t sub_275A6DF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return swift_endAccess();
}

uint64_t sub_275A6E008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v8 = swift_beginAccess();
  a6(v8);
  sub_275AE5374();
  return swift_endAccess();
}

uint64_t ISOPB_SubscriptiondPetMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for ISOPB_SubscriptiondPetMessage(0);
  result = sub_275A6E11C(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275A6E11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_275A5D41C(a1, a2, a3, a4);
  if (!v4)
  {
    sub_275A6EA5C(a1, a2, a3, a4);
    sub_275A6EAE0(a1, a2, a3, a4);
    sub_275A6EB7C(a1, a2, a3, a4);
    sub_275A6EC00(a1, a2, a3, a4);
    sub_275A6EC88(a1, a2, a3, a4);
    sub_275A6ED10(a1, a2, a3, a4);
    sub_275A6ED98(a1, a2, a3, a4);
    sub_275A6EE1C(a1, a2, a3, a4);
    sub_275A6EEA0(a1, a2, a3, a4);
    sub_275A6EF24(a1, a2, a3, a4);
    sub_275A6EFA8(a1, a2, a3, a4);
    sub_275A6F02C(a1, a2, a3, a4);
    sub_275A6F0B0(a1, a2, a3, a4);
    sub_275A6F134(a1, a2, a3, a4);
    sub_275A6F1B8(a1, a2, a3, a4);
    sub_275A6F23C(a1, a2, a3, a4);
    sub_275A6F2C0(a1, a2, a3, a4);
    sub_275A6F344(a1, a2, a3, a4);
    sub_275A6F3E0(a1, a2, a3, a4);
    sub_275A6F47C(a1, a2, a3, a4);
    sub_275A6F518(a1, a2, a3, a4);
    sub_275A6F5B4(a1, a2, a3, a4);
    sub_275A6F650(a1, a2, a3, a4);
    sub_275A6F6EC(a1, a2, a3, a4);
    sub_275A6F770(a1, a2, a3, a4);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__diskStorageCapacityBytes, 27);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__usedDiskCapacityBytes, 28);
    sub_275A6F964(a1, a2, a3, a4);
    sub_275A6FBE0(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__trafficType, sub_275A75640, 30, &type metadata for ISOPB_SubscriptiondPetMessage.TrafficType);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__dailyScreenTimeSeconds, 31);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__avgWeeklyScreenTimeSeconds2W, 32);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__daemonVersion, 33);
    sub_275A6F9F0(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__obsoleteDayOfWeek, 34);
    sub_275A6F9F0(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__deviceModelName, 35);
    sub_275A6FAA0(a1, a2, a3, a4);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionMajorVersion, 37);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionMinorVersion, 38);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionPatchVersion, 39);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__offsetMins, 40);
    sub_275A6FBE0(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__icloudNotificationActionLabel, sub_275A75598, 41, &type metadata for ISOPB_SubscriptiondPetMessage.ICloudNotificationActionLabel);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudNotificationOpened, 42);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCountSameSlot, 43);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__cameraLaunchCountSameSlot, 44);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCountSameSlot, 45);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__filesLaunchCountSameSlot, 46);
    sub_275A6FB44(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isSleepModeOnSameSlot, 47);
    sub_275A6FB44(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDoNotDisturbOnSameSlot, 48);
    sub_275A6FB44(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDrivingModeOnSameSlot, 49);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__numNotificationsSameSlot, 50);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__numOpenedNotificationsSameSlot, 51);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastCameraAppLaunch1W, 52);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastPhotosAppLaunch1W, 53);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastFilesAppLaunch1W, 54);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isSleepModeOnCount2W, 55);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDoNotDisturbOnCount2W, 56);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDrivingModeOnCount2W, 57);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCount2WMedian, 58);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCount2WMax, 59);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCount2WMedian, 60);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCount2WMax, 61);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__totalNotificationCount2WMedian, 62);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__totalNotificationCount2WMax, 63);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedNotificationCount2WMedian, 64);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedNotificationCount2WMax, 65);
    sub_275A6FB44(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__buyLabel, 66);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudBuy, 67);
    sub_275A6FB44(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openLabelSubStream, 68);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudOpenedSubStream, 69);
    sub_275A6FBE0(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__userTier, sub_275A75544, 70, &type metadata for ISOPB_SubscriptiondPetMessage.UserTier);
    return sub_275A6FBE0(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__obsoleteTrafficType, sub_275A75640, 100, &type metadata for ISOPB_SubscriptiondPetMessage.TrafficType);
  }

  return result;
}

uint64_t sub_275A6EA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 32) & 1) == 0)
  {
    return sub_275AE54D4();
  }

  return result;
}

uint64_t sub_275A6EAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 48))
  {

    sub_275AE5514();
  }

  return result;
}

uint64_t sub_275A6EB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 64) & 1) == 0)
  {
    return sub_275AE54E4();
  }

  return result;
}

uint64_t sub_275A6EC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 65) != 2)
  {
    return sub_275AE54A4();
  }

  return result;
}

uint64_t sub_275A6EC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 66) != 2)
  {
    return sub_275AE54A4();
  }

  return result;
}

uint64_t sub_275A6ED10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 67) != 2)
  {
    return sub_275AE54A4();
  }

  return result;
}

uint64_t sub_275A6ED98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 80) & 1) == 0)
  {
    return sub_275AE5504();
  }

  return result;
}

uint64_t sub_275A6EE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 96) & 1) == 0)
  {
    return sub_275AE54E4();
  }

  return result;
}

uint64_t sub_275A6EEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 112) & 1) == 0)
  {
    return sub_275AE54E4();
  }

  return result;
}

uint64_t sub_275A6EF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 128) & 1) == 0)
  {
    return sub_275AE54E4();
  }

  return result;
}

uint64_t sub_275A6EFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 144) & 1) == 0)
  {
    return sub_275AE54E4();
  }

  return result;
}

uint64_t sub_275A6F02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 160) & 1) == 0)
  {
    return sub_275AE54E4();
  }

  return result;
}

uint64_t sub_275A6F0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 176) & 1) == 0)
  {
    return sub_275AE54E4();
  }

  return result;
}

uint64_t sub_275A6F134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 192) & 1) == 0)
  {
    return sub_275AE54E4();
  }

  return result;
}

uint64_t sub_275A6F1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 208) & 1) == 0)
  {
    return sub_275AE54E4();
  }

  return result;
}

uint64_t sub_275A6F23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 224) & 1) == 0)
  {
    return sub_275AE5504();
  }

  return result;
}

uint64_t sub_275A6F2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 240) & 1) == 0)
  {
    return sub_275AE5504();
  }

  return result;
}

uint64_t sub_275A6F344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 256))
  {

    sub_275AE5514();
  }

  return result;
}

uint64_t sub_275A6F3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 272))
  {

    sub_275AE5514();
  }

  return result;
}

uint64_t sub_275A6F47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 288))
  {

    sub_275AE5514();
  }

  return result;
}

uint64_t sub_275A6F518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 304))
  {

    sub_275AE5514();
  }

  return result;
}

uint64_t sub_275A6F5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 320))
  {

    sub_275AE5514();
  }

  return result;
}

uint64_t sub_275A6F650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 336))
  {

    sub_275AE5514();
  }

  return result;
}

uint64_t sub_275A6F6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 352) & 1) == 0)
  {
    return sub_275AE5504();
  }

  return result;
}

uint64_t sub_275A6F770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24720, &qword_275AE7EA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ISOPB_SubscriptionLabelMessage(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__labelMessage;
  swift_beginAccess();
  sub_275A7445C(a1 + v12, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_275A5FE04(v7, &qword_280A24720, &qword_275AE7EA0);
  }

  sub_275A744CC(v7, v11);
  sub_275A74670(&qword_280A24978, type metadata accessor for ISOPB_SubscriptionLabelMessage, &protocol conformance descriptor for ISOPB_SubscriptionLabelMessage);
  sub_275AE5534();
  return sub_275A74604(v11);
}

uint64_t sub_275A6F964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedIcloudNotificationRatio2W;
  result = swift_beginAccess();
  if ((*(v4 + 8) & 1) == 0)
  {
    return sub_275AE5504();
  }

  return result;
}

uint64_t sub_275A6F9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6 = a1 + *a5;
  result = swift_beginAccess();
  if (*(v6 + 8))
  {

    sub_275AE5514();
  }

  return result;
}

uint64_t sub_275A6FAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__dayOfWeek;
  result = swift_beginAccess();
  if (*(a1 + v5) != 8)
  {
    sub_275A755EC();
    return sub_275AE54B4();
  }

  return result;
}

uint64_t sub_275A6FB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v7 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v7) != 2)
  {
    return sub_275AE54A4();
  }

  return result;
}

uint64_t sub_275A6FBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  v10 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v10) != 3)
  {
    a6(result);
    return sub_275AE54B4();
  }

  return result;
}

BOOL sub_275A6FCA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISOPB_SubscriptionLabelMessage(0);
  v305 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v305 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24A18, &unk_275AE8A20);
  MEMORY[0x28223BE20](v7);
  v306 = &v305 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24720, &qword_275AE7EA0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v305 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v305 - v13;
  swift_beginAccess();
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  swift_beginAccess();
  v17 = *(a2 + 24);
  if (v16)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v15 != *(a2 + 16))
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v307 = a2;
  swift_beginAccess();
  v18 = *(a1 + 28);
  v19 = *(a1 + 32);
  swift_beginAccess();
  v20 = *(v307 + 32);
  if (v19)
  {
    if (!*(v307 + 32))
    {
      return 0;
    }
  }

  else
  {
    if (v18 != *(v307 + 28))
    {
      v20 = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v22 = *(a1 + 40);
  v21 = *(a1 + 48);
  swift_beginAccess();
  v23 = *(v307 + 48);
  if (v21)
  {
    if (!v23 || (v22 != *(v307 + 40) || v21 != v23) && (sub_275AE5AC4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  swift_beginAccess();
  v24 = *(a1 + 56);
  v25 = *(a1 + 64);
  v26 = v307;
  swift_beginAccess();
  v27 = *(v26 + 64);
  if (v25)
  {
    if (!*(v26 + 64))
    {
      return 0;
    }
  }

  else
  {
    if (v24 != *(v26 + 56))
    {
      v27 = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v28 = *(a1 + 65);
  swift_beginAccess();
  v29 = *(v307 + 65);
  if (v28 == 2)
  {
    if (v29 != 2)
    {
      return 0;
    }
  }

  else if (v29 == 2 || ((v28 ^ v29) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v30 = *(a1 + 66);
  swift_beginAccess();
  v31 = *(v307 + 66);
  if (v30 == 2)
  {
    if (v31 != 2)
    {
      return 0;
    }
  }

  else if (v31 == 2 || ((v30 ^ v31) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v32 = *(a1 + 67);
  swift_beginAccess();
  v33 = *(v307 + 67);
  if (v32 == 2)
  {
    if (v33 != 2)
    {
      return 0;
    }
  }

  else if (v33 == 2 || ((v32 ^ v33) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v34 = *(a1 + 72);
  v35 = *(a1 + 80);
  swift_beginAccess();
  v36 = *(v307 + 80);
  if (v35)
  {
    if (!*(v307 + 80))
    {
      return 0;
    }
  }

  else
  {
    if (v34 != *(v307 + 72))
    {
      v36 = 1;
    }

    if (v36)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v37 = *(a1 + 88);
  v38 = *(a1 + 96);
  swift_beginAccess();
  v39 = *(v307 + 96);
  if (v38)
  {
    if (!*(v307 + 96))
    {
      return 0;
    }
  }

  else
  {
    if (v37 != *(v307 + 88))
    {
      v39 = 1;
    }

    if (v39)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v40 = *(a1 + 104);
  v41 = *(a1 + 112);
  swift_beginAccess();
  v42 = *(v307 + 112);
  if (v41)
  {
    if (!*(v307 + 112))
    {
      return 0;
    }
  }

  else
  {
    if (v40 != *(v307 + 104))
    {
      v42 = 1;
    }

    if (v42)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v43 = *(a1 + 120);
  v44 = *(a1 + 128);
  swift_beginAccess();
  v45 = *(v307 + 128);
  if (v44)
  {
    if (!*(v307 + 128))
    {
      return 0;
    }
  }

  else
  {
    if (v43 != *(v307 + 120))
    {
      v45 = 1;
    }

    if (v45)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v46 = *(a1 + 136);
  v47 = *(a1 + 144);
  swift_beginAccess();
  v48 = *(v307 + 144);
  if (v47)
  {
    if (!*(v307 + 144))
    {
      return 0;
    }
  }

  else
  {
    if (v46 != *(v307 + 136))
    {
      v48 = 1;
    }

    if (v48)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v49 = *(a1 + 152);
  v50 = *(a1 + 160);
  v51 = v307;
  swift_beginAccess();
  v52 = *(v51 + 160);
  if (v50)
  {
    if (!*(v51 + 160))
    {
      return 0;
    }
  }

  else
  {
    if (v49 != *(v51 + 152))
    {
      v52 = 1;
    }

    if (v52)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v53 = *(a1 + 168);
  v54 = *(a1 + 176);
  v55 = v307;
  swift_beginAccess();
  v56 = *(v55 + 176);
  if (v54)
  {
    if (!*(v55 + 176))
    {
      return 0;
    }
  }

  else
  {
    if (v53 != *(v307 + 168))
    {
      v56 = 1;
    }

    if (v56)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v57 = *(a1 + 184);
  v58 = *(a1 + 192);
  v59 = v307;
  swift_beginAccess();
  v60 = *(v59 + 192);
  if (v58)
  {
    if (!*(v59 + 192))
    {
      return 0;
    }
  }

  else
  {
    if (v57 != *(v307 + 184))
    {
      v60 = 1;
    }

    if (v60)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v61 = *(a1 + 200);
  v62 = *(a1 + 208);
  v63 = v307;
  swift_beginAccess();
  v64 = *(v63 + 208);
  if (v62)
  {
    if (!*(v63 + 208))
    {
      return 0;
    }
  }

  else
  {
    if (v61 != *(v307 + 200))
    {
      v64 = 1;
    }

    if (v64)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v65 = *(a1 + 216);
  v66 = *(a1 + 224);
  v67 = v307;
  swift_beginAccess();
  v68 = *(v67 + 224);
  if (v66)
  {
    if (!*(v67 + 224))
    {
      return 0;
    }
  }

  else
  {
    if (v65 != *(v307 + 216))
    {
      v68 = 1;
    }

    if (v68)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v69 = *(a1 + 232);
  v70 = *(a1 + 240);
  v71 = v307;
  swift_beginAccess();
  v72 = *(v71 + 240);
  if (v70)
  {
    if (!*(v71 + 240))
    {
      return 0;
    }
  }

  else
  {
    if (v69 != *(v307 + 232))
    {
      v72 = 1;
    }

    if (v72)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v73 = *(a1 + 248);
  v74 = *(a1 + 256);
  v75 = v307;
  swift_beginAccess();
  v76 = *(v75 + 256);
  if (v74)
  {
    if (!v76 || (v73 != *(v307 + 248) || v74 != v76) && (sub_275AE5AC4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v76)
  {
    return 0;
  }

  swift_beginAccess();
  v77 = *(a1 + 264);
  v78 = *(a1 + 272);
  v79 = v307;
  swift_beginAccess();
  v80 = *(v79 + 272);
  if (v78)
  {
    if (!v80 || (v77 != *(v307 + 264) || v78 != v80) && (sub_275AE5AC4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v80)
  {
    return 0;
  }

  swift_beginAccess();
  v81 = *(a1 + 280);
  v82 = *(a1 + 288);
  v83 = v307;
  swift_beginAccess();
  v84 = *(v83 + 288);
  if (v82)
  {
    if (!v84 || (v81 != *(v307 + 280) || v82 != v84) && (sub_275AE5AC4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v84)
  {
    return 0;
  }

  swift_beginAccess();
  v85 = *(a1 + 296);
  v86 = *(a1 + 304);
  v87 = v307;
  swift_beginAccess();
  v88 = *(v87 + 304);
  if (v86)
  {
    if (!v88 || (v85 != *(v307 + 296) || v86 != v88) && (sub_275AE5AC4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v88)
  {
    return 0;
  }

  swift_beginAccess();
  v89 = *(a1 + 312);
  v90 = *(a1 + 320);
  v91 = v307;
  swift_beginAccess();
  v92 = *(v91 + 320);
  if (v90)
  {
    if (!v92 || (v89 != *(v307 + 312) || v90 != v92) && (sub_275AE5AC4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v92)
  {
    return 0;
  }

  swift_beginAccess();
  v93 = *(a1 + 328);
  v94 = *(a1 + 336);
  v95 = v307;
  swift_beginAccess();
  v96 = *(v95 + 336);
  if (v94)
  {
    if (!v96 || (v93 != *(v307 + 328) || v94 != v96) && (sub_275AE5AC4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v96)
  {
    return 0;
  }

  swift_beginAccess();
  v97 = *(a1 + 344);
  v98 = *(a1 + 352);
  v99 = v307;
  swift_beginAccess();
  v100 = *(v99 + 352);
  if (v98)
  {
    if (!*(v99 + 352))
    {
      return 0;
    }
  }

  else
  {
    if (v97 != *(v307 + 344))
    {
      v100 = 1;
    }

    if (v100)
    {
      return 0;
    }
  }

  v101 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__labelMessage;
  swift_beginAccess();
  sub_275A7445C(a1 + v101, v14);
  v102 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__labelMessage;
  v103 = v307;
  swift_beginAccess();
  v104 = *(v7 + 48);
  v105 = v306;
  sub_275A7445C(v14, v306);
  v106 = v103 + v102;
  v107 = v104;
  sub_275A7445C(v106, v105 + v104);
  v108 = *(v305 + 48);
  if (v108(v105, 1, v4) == 1)
  {

    sub_275A5FE04(v14, &qword_280A24720, &qword_275AE7EA0);
    if (v108(v306 + v107, 1, v4) == 1)
    {
      sub_275A5FE04(v306, &qword_280A24720, &qword_275AE7EA0);
      goto LABEL_162;
    }

LABEL_160:
    sub_275A5FE04(v306, &qword_280A24A18, &unk_275AE8A20);
    goto LABEL_389;
  }

  v109 = v306;
  sub_275A7445C(v306, v12);
  if (v108(v109 + v107, 1, v4) == 1)
  {

    sub_275A5FE04(v14, &qword_280A24720, &qword_275AE7EA0);
    sub_275A74604(v12);
    goto LABEL_160;
  }

  v110 = v306;
  sub_275A744CC(v306 + v107, v6);

  v111 = _s31iCloudSubscriptionOptimizerCore06ISOPB_B12LabelMessageV2eeoiySbAC_ACtFZ_0(v12, v6);
  sub_275A74604(v6);
  sub_275A5FE04(v14, &qword_280A24720, &qword_275AE7EA0);
  sub_275A74604(v12);
  sub_275A5FE04(v110, &qword_280A24720, &qword_275AE7EA0);
  if ((v111 & 1) == 0)
  {
    goto LABEL_389;
  }

LABEL_162:
  v112 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__diskStorageCapacityBytes);
  swift_beginAccess();
  v113 = *v112;
  v114 = *(v112 + 8);
  v115 = v307 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__diskStorageCapacityBytes;
  swift_beginAccess();
  if (v114)
  {
    if ((*(v115 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v115 + 8) & 1) != 0 || v113 != *v115)
  {
    goto LABEL_389;
  }

  v116 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__usedDiskCapacityBytes);
  swift_beginAccess();
  v117 = *v116;
  v118 = *(v116 + 8);
  v119 = v307 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__usedDiskCapacityBytes;
  swift_beginAccess();
  if (v118)
  {
    if ((*(v119 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v119 + 8) & 1) != 0 || v117 != *v119)
  {
    goto LABEL_389;
  }

  v120 = a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedIcloudNotificationRatio2W;
  swift_beginAccess();
  v121 = *v120;
  v122 = *(v120 + 8);
  v123 = v307 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedIcloudNotificationRatio2W;
  swift_beginAccess();
  if (v122)
  {
    if ((*(v123 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v123 + 8) & 1) != 0 || v121 != *v123)
  {
    goto LABEL_389;
  }

  v124 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__trafficType;
  swift_beginAccess();
  v125 = *(a1 + v124);
  v126 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__trafficType;
  v127 = v307;
  swift_beginAccess();
  v128 = *(v127 + v126);
  if (v125 == 3)
  {
    if (v128 != 3)
    {
      goto LABEL_389;
    }
  }

  else if (v128 == 3 || v125 != v128)
  {
    goto LABEL_389;
  }

  v129 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__dailyScreenTimeSeconds);
  swift_beginAccess();
  v130 = *v129;
  v131 = *(v129 + 8);
  v132 = v307 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__dailyScreenTimeSeconds;
  swift_beginAccess();
  if (v131)
  {
    if ((*(v132 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v132 + 8) & 1) != 0 || v130 != *v132)
  {
    goto LABEL_389;
  }

  v133 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__avgWeeklyScreenTimeSeconds2W);
  swift_beginAccess();
  v134 = *v133;
  v135 = *(v133 + 8);
  v136 = v307 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__avgWeeklyScreenTimeSeconds2W;
  swift_beginAccess();
  if (v135)
  {
    if ((*(v136 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v136 + 8) & 1) != 0 || v134 != *v136)
  {
    goto LABEL_389;
  }

  v137 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__daemonVersion);
  swift_beginAccess();
  v138 = *v137;
  v139 = *(v137 + 8);
  v140 = v307 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__daemonVersion;
  swift_beginAccess();
  if (v139)
  {
    if ((*(v140 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v140 + 8) & 1) != 0 || v138 != *v140)
  {
    goto LABEL_389;
  }

  v141 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__obsoleteDayOfWeek);
  swift_beginAccess();
  v142 = *v141;
  v143 = v141[1];
  v144 = (v307 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__obsoleteDayOfWeek);
  swift_beginAccess();
  v145 = v144[1];
  if (v143)
  {
    if (!v145 || (v142 != *v144 || v143 != v145) && (sub_275AE5AC4() & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if (v145)
  {
    goto LABEL_389;
  }

  v146 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__deviceModelName);
  swift_beginAccess();
  v147 = *v146;
  v148 = v146[1];
  v149 = (v307 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__deviceModelName);
  swift_beginAccess();
  v150 = v149[1];
  if (v148)
  {
    if (!v150 || (v147 != *v149 || v148 != v150) && (sub_275AE5AC4() & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if (v150)
  {
    goto LABEL_389;
  }

  v151 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__dayOfWeek;
  swift_beginAccess();
  v152 = *(a1 + v151);
  v153 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__dayOfWeek;
  v154 = v307;
  swift_beginAccess();
  v155 = *(v154 + v153);
  if (v152 == 8)
  {
    if (v155 != 8)
    {
      goto LABEL_389;
    }
  }

  else if (v155 == 8 || v152 != v155)
  {
    goto LABEL_389;
  }

  v156 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionMajorVersion);
  swift_beginAccess();
  v157 = *v156;
  v158 = *(v156 + 8);
  v159 = v307 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionMajorVersion;
  swift_beginAccess();
  if (v158)
  {
    if ((*(v159 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v159 + 8) & 1) != 0 || v157 != *v159)
  {
    goto LABEL_389;
  }

  v160 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionMinorVersion);
  swift_beginAccess();
  v161 = *v160;
  v162 = *(v160 + 8);
  v163 = v307 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionMinorVersion;
  swift_beginAccess();
  if (v162)
  {
    if ((*(v163 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v163 + 8) & 1) != 0 || v161 != *v163)
  {
    goto LABEL_389;
  }

  v164 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionPatchVersion);
  swift_beginAccess();
  v165 = *v164;
  v166 = *(v164 + 8);
  v167 = v307 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionPatchVersion;
  swift_beginAccess();
  if (v166)
  {
    if ((*(v167 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v167 + 8) & 1) != 0 || v165 != *v167)
  {
    goto LABEL_389;
  }

  v168 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__offsetMins);
  swift_beginAccess();
  v169 = *v168;
  v170 = *(v168 + 8);
  v171 = v307 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__offsetMins;
  swift_beginAccess();
  if (v170)
  {
    if ((*(v171 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v171 + 8) & 1) != 0 || v169 != *v171)
  {
    goto LABEL_389;
  }

  v172 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__icloudNotificationActionLabel;
  swift_beginAccess();
  v173 = *(a1 + v172);
  v174 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__icloudNotificationActionLabel;
  v175 = v307;
  swift_beginAccess();
  v176 = *(v175 + v174);
  if (v173 == 3)
  {
    if (v176 != 3)
    {
      goto LABEL_389;
    }
  }

  else if (v176 == 3 || v173 != v176)
  {
    goto LABEL_389;
  }

  v177 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudNotificationOpened);
  swift_beginAccess();
  v178 = *v177;
  v179 = *(v177 + 8);
  v180 = v307 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudNotificationOpened;
  swift_beginAccess();
  if (v179)
  {
    if ((*(v180 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v180 + 8) & 1) != 0 || v178 != *v180)
  {
    goto LABEL_389;
  }

  v181 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCountSameSlot);
  swift_beginAccess();
  v182 = *v181;
  v183 = *(v181 + 8);
  v184 = v307 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCountSameSlot;
  swift_beginAccess();
  if (v183)
  {
    if ((*(v184 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v184 + 8) & 1) != 0 || v182 != *v184)
  {
    goto LABEL_389;
  }

  v185 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__cameraLaunchCountSameSlot);
  swift_beginAccess();
  v186 = *v185;
  v187 = *(v185 + 8);
  v188 = v307 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__cameraLaunchCountSameSlot;
  swift_beginAccess();
  if (v187)
  {
    if ((*(v188 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v188 + 8) & 1) != 0 || v186 != *v188)
  {
    goto LABEL_389;
  }

  v189 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCountSameSlot);
  swift_beginAccess();
  v190 = *v189;
  v191 = *(v189 + 8);
  v192 = v307 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCountSameSlot;
  swift_beginAccess();
  if (v191)
  {
    if ((*(v192 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v192 + 8) & 1) != 0 || v190 != *v192)
  {
    goto LABEL_389;
  }

  v193 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__filesLaunchCountSameSlot);
  swift_beginAccess();
  v194 = *v193;
  v195 = *(v193 + 8);
  v196 = v307 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__filesLaunchCountSameSlot;
  swift_beginAccess();
  if (v195)
  {
    if ((*(v196 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v196 + 8) & 1) != 0 || v194 != *v196)
  {
    goto LABEL_389;
  }

  v197 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isSleepModeOnSameSlot;
  swift_beginAccess();
  v198 = *(a1 + v197);
  v199 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isSleepModeOnSameSlot;
  v200 = v307;
  swift_beginAccess();
  v201 = *(v200 + v199);
  if (v198 == 2)
  {
    if (v201 != 2)
    {
      goto LABEL_389;
    }
  }

  else if (v201 == 2 || ((v198 ^ v201) & 1) != 0)
  {
    goto LABEL_389;
  }

  v202 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDoNotDisturbOnSameSlot;
  swift_beginAccess();
  v203 = *(a1 + v202);
  v204 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDoNotDisturbOnSameSlot;
  v205 = v307;
  swift_beginAccess();
  v206 = *(v205 + v204);
  if (v203 == 2)
  {
    if (v206 != 2)
    {
      goto LABEL_389;
    }
  }

  else if (v206 == 2 || ((v203 ^ v206) & 1) != 0)
  {
    goto LABEL_389;
  }

  v207 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDrivingModeOnSameSlot;
  swift_beginAccess();
  v208 = *(a1 + v207);
  v209 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDrivingModeOnSameSlot;
  v210 = v307;
  swift_beginAccess();
  v211 = *(v210 + v209);
  if (v208 == 2)
  {
    if (v211 != 2)
    {
      goto LABEL_389;
    }
  }

  else if (v211 == 2 || ((v208 ^ v211) & 1) != 0)
  {
    goto LABEL_389;
  }

  v212 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__numNotificationsSameSlot);
  swift_beginAccess();
  v213 = *v212;
  v214 = *(v212 + 8);
  v215 = v307 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__numNotificationsSameSlot;
  swift_beginAccess();
  if (v214)
  {
    if ((*(v215 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v215 + 8) & 1) != 0 || v213 != *v215)
  {
    goto LABEL_389;
  }

  v216 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__numOpenedNotificationsSameSlot);
  swift_beginAccess();
  v217 = *v216;
  v218 = *(v216 + 8);
  v219 = v307 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__numOpenedNotificationsSameSlot;
  swift_beginAccess();
  if (v218)
  {
    if ((*(v219 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v219 + 8) & 1) != 0 || v217 != *v219)
  {
    goto LABEL_389;
  }

  v220 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastCameraAppLaunch1W);
  swift_beginAccess();
  v221 = *v220;
  v222 = *(v220 + 8);
  v223 = v307 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastCameraAppLaunch1W;
  swift_beginAccess();
  if (v222)
  {
    if ((*(v223 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v223 + 8) & 1) != 0 || v221 != *v223)
  {
    goto LABEL_389;
  }

  v224 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastPhotosAppLaunch1W);
  swift_beginAccess();
  v225 = *v224;
  v226 = *(v224 + 8);
  v227 = v307 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastPhotosAppLaunch1W;
  swift_beginAccess();
  if (v226)
  {
    if ((*(v227 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v227 + 8) & 1) != 0 || v225 != *v227)
  {
    goto LABEL_389;
  }

  v228 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastFilesAppLaunch1W);
  swift_beginAccess();
  v229 = *v228;
  v230 = *(v228 + 8);
  v231 = v307 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastFilesAppLaunch1W;
  swift_beginAccess();
  if (v230)
  {
    if ((*(v231 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v231 + 8) & 1) != 0 || v229 != *v231)
  {
    goto LABEL_389;
  }

  v232 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isSleepModeOnCount2W);
  swift_beginAccess();
  v233 = *v232;
  v234 = *(v232 + 8);
  v235 = v307 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isSleepModeOnCount2W;
  swift_beginAccess();
  if (v234)
  {
    if ((*(v235 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v235 + 8) & 1) != 0 || v233 != *v235)
  {
    goto LABEL_389;
  }

  v236 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDoNotDisturbOnCount2W);
  swift_beginAccess();
  v237 = *v236;
  v238 = *(v236 + 8);
  v239 = v307 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDoNotDisturbOnCount2W;
  swift_beginAccess();
  if (v238)
  {
    if ((*(v239 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v239 + 8) & 1) != 0 || v237 != *v239)
  {
    goto LABEL_389;
  }

  v240 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDrivingModeOnCount2W);
  swift_beginAccess();
  v241 = *v240;
  v242 = *(v240 + 8);
  v243 = v307 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDrivingModeOnCount2W;
  swift_beginAccess();
  if (v242)
  {
    if ((*(v243 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v243 + 8) & 1) != 0 || v241 != *v243)
  {
    goto LABEL_389;
  }

  v244 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCount2WMedian);
  swift_beginAccess();
  v245 = *v244;
  v246 = *(v244 + 8);
  v247 = v307 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCount2WMedian;
  swift_beginAccess();
  if (v246)
  {
    if ((*(v247 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v247 + 8) & 1) != 0 || v245 != *v247)
  {
    goto LABEL_389;
  }

  v248 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCount2WMax);
  swift_beginAccess();
  v249 = *v248;
  v250 = *(v248 + 8);
  v251 = v307 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCount2WMax;
  swift_beginAccess();
  if (v250)
  {
    if ((*(v251 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v251 + 8) & 1) != 0 || v249 != *v251)
  {
    goto LABEL_389;
  }

  v252 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCount2WMedian);
  swift_beginAccess();
  v253 = *v252;
  v254 = *(v252 + 8);
  v255 = v307 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCount2WMedian;
  swift_beginAccess();
  if (v254)
  {
    if ((*(v255 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v255 + 8) & 1) != 0 || v253 != *v255)
  {
    goto LABEL_389;
  }

  v256 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCount2WMax);
  swift_beginAccess();
  v257 = *v256;
  v258 = *(v256 + 8);
  v259 = v307 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCount2WMax;
  swift_beginAccess();
  if (v258)
  {
    if ((*(v259 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v259 + 8) & 1) != 0 || v257 != *v259)
  {
    goto LABEL_389;
  }

  v260 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__totalNotificationCount2WMedian);
  swift_beginAccess();
  v261 = *v260;
  v262 = *(v260 + 8);
  v263 = v307 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__totalNotificationCount2WMedian;
  swift_beginAccess();
  if (v262)
  {
    if ((*(v263 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v263 + 8) & 1) != 0 || v261 != *v263)
  {
    goto LABEL_389;
  }

  v264 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__totalNotificationCount2WMax);
  swift_beginAccess();
  v265 = *v264;
  v266 = *(v264 + 8);
  v267 = v307 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__totalNotificationCount2WMax;
  swift_beginAccess();
  if (v266)
  {
    if ((*(v267 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v267 + 8) & 1) != 0 || v265 != *v267)
  {
    goto LABEL_389;
  }

  v268 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedNotificationCount2WMedian);
  swift_beginAccess();
  v269 = *v268;
  v270 = *(v268 + 8);
  v271 = v307 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedNotificationCount2WMedian;
  swift_beginAccess();
  if (v270)
  {
    if ((*(v271 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v271 + 8) & 1) != 0 || v269 != *v271)
  {
    goto LABEL_389;
  }

  v272 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedNotificationCount2WMax);
  swift_beginAccess();
  v273 = *v272;
  v274 = *(v272 + 8);
  v275 = v307 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedNotificationCount2WMax;
  swift_beginAccess();
  if (v274)
  {
    if ((*(v275 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v275 + 8) & 1) != 0 || v273 != *v275)
  {
    goto LABEL_389;
  }

  v276 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__buyLabel;
  swift_beginAccess();
  v277 = *(a1 + v276);
  v278 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__buyLabel;
  v279 = v307;
  swift_beginAccess();
  v280 = *(v279 + v278);
  if (v277 == 2)
  {
    if (v280 != 2)
    {
      goto LABEL_389;
    }
  }

  else if (v280 == 2 || ((v277 ^ v280) & 1) != 0)
  {
    goto LABEL_389;
  }

  v281 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudBuy);
  swift_beginAccess();
  v282 = *v281;
  v283 = *(v281 + 8);
  v284 = v307 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudBuy;
  swift_beginAccess();
  if (v283)
  {
    if ((*(v284 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v284 + 8) & 1) != 0 || v282 != *v284)
  {
    goto LABEL_389;
  }

  v285 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openLabelSubStream;
  swift_beginAccess();
  v286 = *(a1 + v285);
  v287 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openLabelSubStream;
  v288 = v307;
  swift_beginAccess();
  v289 = *(v288 + v287);
  if (v286 == 2)
  {
    if (v289 != 2)
    {
      goto LABEL_389;
    }
  }

  else if (v289 == 2 || ((v286 ^ v289) & 1) != 0)
  {
    goto LABEL_389;
  }

  v290 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudOpenedSubStream);
  swift_beginAccess();
  v291 = *v290;
  v292 = *(v290 + 8);
  v293 = v307 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudOpenedSubStream;
  swift_beginAccess();
  if (v292)
  {
    if ((*(v293 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v293 + 8) & 1) != 0 || v291 != *v293)
  {
    goto LABEL_389;
  }

  v294 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__userTier;
  swift_beginAccess();
  v295 = *(a1 + v294);
  v296 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__userTier;
  v297 = v307;
  swift_beginAccess();
  v298 = *(v297 + v296);
  if (v295 == 3)
  {
    if (v298 == 3)
    {
      goto LABEL_386;
    }

LABEL_389:

    return 0;
  }

  if (v298 == 3 || v295 != v298)
  {
    goto LABEL_389;
  }

LABEL_386:
  v299 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__obsoleteTrafficType;
  swift_beginAccess();
  v300 = *(a1 + v299);

  v301 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__obsoleteTrafficType;
  v302 = v307;
  swift_beginAccess();
  v303 = *(v302 + v301);

  if (v300 == 3)
  {
    return v303 == 3;
  }

  result = 0;
  if (v303 != 3 && v300 == v303)
  {
    return 1;
  }

  return result;
}

uint64_t sub_275A71C30(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_275AE5B54();
  a1(0);
  sub_275A74670(a2, a3, a4);
  sub_275AE5644();
  return sub_275AE5B74();
}

uint64_t sub_275A71CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v4 = *(a1 + 20);
  if (qword_280A24368 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_280A24718;
}

uint64_t sub_275A71D7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A74670(&qword_280A249E0, type metadata accessor for ISOPB_SubscriptiondPetMessage, &protocol conformance descriptor for ISOPB_SubscriptiondPetMessage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275A71E1C(uint64_t a1)
{
  sub_275A74670(&qword_280A24990, type metadata accessor for ISOPB_SubscriptiondPetMessage, &protocol conformance descriptor for ISOPB_SubscriptiondPetMessage);

  return sub_275AE5464();
}

uint64_t sub_275A71E88(uint64_t a1, uint64_t a2)
{
  sub_275A74670(&qword_280A24990, type metadata accessor for ISOPB_SubscriptiondPetMessage, &protocol conformance descriptor for ISOPB_SubscriptiondPetMessage);

  return sub_275AE5474();
}

uint64_t sub_275A71F08()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static ISOPB_SubscriptiondPetMessage.TrafficType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ISOPB_SubscriptiondPetMessage.TrafficType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE78F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "REAL";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "SYNTHESIZED";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_275AE5554();
}

uint64_t sub_275A72184()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static ISOPB_SubscriptiondPetMessage.DayOfWeek._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ISOPB_SubscriptiondPetMessage.DayOfWeek._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_275AE7E90;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 0;
  *v5 = "UNAVAILABLE";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_275AE5544();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "SUNDAY";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "MONDAY";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "TUESDAY";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "WEDNESDAY";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "THURSDAY";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "FRIDAY";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "SATURDAY";
  *(v21 + 1) = 8;
  v21[16] = 2;
  v8();
  return sub_275AE5554();
}

uint64_t sub_275A72534(uint64_t a1, uint64_t *a2)
{
  v3 = sub_275AE5574();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_275AE78F0;
  v8 = (v7 + v6);
  v9 = v7 + v6 + v4[14];
  *v8 = 0;
  *v9 = "LABEL_UNKNOWN";
  *(v9 + 8) = 13;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x277D21870];
  v11 = sub_275AE5544();
  v12 = *(*(v11 - 8) + 104);
  (v12)(v9, v10, v11);
  v13 = v8 + v5 + v4[14];
  *(v8 + v5) = 1;
  *v13 = "CLICK";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v12();
  v14 = v8 + 2 * v5 + v4[14];
  *(v8 + 2 * v5) = 2;
  *v14 = "CLEAR";
  *(v14 + 8) = 5;
  *(v14 + 16) = 2;
  v12();
  return sub_275AE5554();
}

uint64_t sub_275A727A8()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static ISOPB_SubscriptiondPetMessage.UserTier._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ISOPB_SubscriptiondPetMessage.UserTier._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE78F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "USERTIER_UNKNOWN";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FREE";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "PAID";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_275AE5554();
}

uint64_t _s31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = sub_275A6FCA4(v5, v6);

    if (!v7)
    {
      return 0;
    }
  }

  sub_275AE52A4();
  sub_275A74670(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_275AE5664() & 1;
}

uint64_t _s31iCloudSubscriptionOptimizerCore06ISOPB_B12LabelMessageV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISOPB_SubscriptionLabelMessage(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = *(v4 + 24);
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (v11 == 3)
  {
    if (v12 != 3)
    {
      return 0;
    }
  }

  else if (v11 != v12)
  {
    return 0;
  }

  sub_275AE52A4();
  sub_275A74670(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_275AE5664() & 1;
}

uint64_t sub_275A72BF8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24720, &qword_275AE7EA0);
  MEMORY[0x28223BE20](v3 - 8);
  v235 = &v218 - v4;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 28) = 0;
  *(v1 + 32) = 1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 40) = 0;
  *(v1 + 64) = 1;
  *(v1 + 65) = 514;
  v218 = (v1 + 65);
  *(v1 + 67) = 2;
  v219 = (v1 + 67);
  *(v1 + 72) = 0;
  v220 = (v1 + 72);
  *(v1 + 80) = 1;
  *(v1 + 88) = 0;
  v221 = (v1 + 88);
  *(v1 + 96) = 1;
  *(v1 + 104) = 0;
  v222 = (v1 + 104);
  *(v1 + 112) = 1;
  *(v1 + 120) = 0;
  v223 = (v1 + 120);
  *(v1 + 128) = 1;
  *(v1 + 136) = 0;
  v224 = (v1 + 136);
  *(v1 + 144) = 1;
  *(v1 + 152) = 0;
  v225 = (v1 + 152);
  *(v1 + 160) = 1;
  *(v1 + 168) = 0;
  v226 = (v1 + 168);
  *(v1 + 176) = 1;
  *(v1 + 184) = 0;
  v227 = (v1 + 184);
  *(v1 + 192) = 1;
  *(v1 + 200) = 0;
  v228 = (v1 + 200);
  *(v1 + 208) = 1;
  *(v1 + 216) = 0;
  v229 = (v1 + 216);
  *(v1 + 224) = 1;
  *(v1 + 232) = 0;
  v230 = (v1 + 232);
  *(v1 + 240) = 1;
  *(v1 + 344) = 0;
  *(v1 + 248) = 0u;
  *(v1 + 312) = 0u;
  *(v1 + 328) = 0u;
  *(v1 + 280) = 0u;
  *(v1 + 296) = 0u;
  *(v1 + 264) = 0u;
  *(v1 + 352) = 1;
  v5 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__labelMessage;
  v231 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__labelMessage;
  v6 = type metadata accessor for ISOPB_SubscriptionLabelMessage(0);
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  v7 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__diskStorageCapacityBytes;
  v232 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__diskStorageCapacityBytes;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__usedDiskCapacityBytes;
  v233 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__usedDiskCapacityBytes;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedIcloudNotificationRatio2W;
  v234 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedIcloudNotificationRatio2W;
  *v9 = 0;
  *(v9 + 8) = 1;
  v236 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__trafficType;
  *(v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__trafficType) = 3;
  v10 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__dailyScreenTimeSeconds;
  v237 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__dailyScreenTimeSeconds;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__avgWeeklyScreenTimeSeconds2W;
  v238 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__avgWeeklyScreenTimeSeconds2W;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__daemonVersion;
  v239 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__daemonVersion;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = (v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__obsoleteDayOfWeek);
  v240 = (v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__obsoleteDayOfWeek);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__deviceModelName);
  v241 = (v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__deviceModelName);
  *v14 = 0;
  v14[1] = 0;
  v15 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__dayOfWeek;
  *(v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__dayOfWeek) = 8;
  v16 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionMajorVersion;
  v242 = v15;
  v243 = v16;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionMinorVersion;
  v244 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionMinorVersion;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionPatchVersion;
  v245 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionPatchVersion;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__offsetMins;
  v246 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__offsetMins;
  *v19 = 0;
  *(v19 + 8) = 1;
  v247 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__icloudNotificationActionLabel;
  *(v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__icloudNotificationActionLabel) = 3;
  v20 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudNotificationOpened;
  v248 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudNotificationOpened;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCountSameSlot;
  v249 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCountSameSlot;
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__cameraLaunchCountSameSlot;
  v250 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__cameraLaunchCountSameSlot;
  *v22 = 0;
  *(v22 + 8) = 1;
  v23 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCountSameSlot;
  v251 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCountSameSlot;
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__filesLaunchCountSameSlot;
  v252 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__filesLaunchCountSameSlot;
  *v24 = 0;
  *(v24 + 8) = 1;
  v253 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isSleepModeOnSameSlot;
  *(v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isSleepModeOnSameSlot) = 2;
  v254 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDoNotDisturbOnSameSlot;
  *(v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDoNotDisturbOnSameSlot) = 2;
  v255 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDrivingModeOnSameSlot;
  *(v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDrivingModeOnSameSlot) = 2;
  v25 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__numNotificationsSameSlot;
  v256 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__numNotificationsSameSlot;
  *v25 = 0;
  *(v25 + 8) = 1;
  v26 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__numOpenedNotificationsSameSlot;
  v257 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__numOpenedNotificationsSameSlot;
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastCameraAppLaunch1W;
  v258 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastCameraAppLaunch1W;
  *v27 = 0;
  *(v27 + 8) = 1;
  v28 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastPhotosAppLaunch1W;
  v259 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastPhotosAppLaunch1W;
  *v28 = 0;
  *(v28 + 8) = 1;
  v29 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastFilesAppLaunch1W;
  v260 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastFilesAppLaunch1W;
  *v29 = 0;
  *(v29 + 8) = 1;
  v30 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isSleepModeOnCount2W;
  v261 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isSleepModeOnCount2W;
  *v30 = 0;
  *(v30 + 8) = 1;
  v31 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDoNotDisturbOnCount2W;
  v262 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDoNotDisturbOnCount2W;
  *v31 = 0;
  *(v31 + 8) = 1;
  v32 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDrivingModeOnCount2W;
  v263 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDrivingModeOnCount2W;
  *v32 = 0;
  *(v32 + 8) = 1;
  v33 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCount2WMedian;
  v264 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCount2WMedian;
  *v33 = 0;
  *(v33 + 8) = 1;
  v34 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCount2WMax;
  v265 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCount2WMax;
  *v34 = 0;
  *(v34 + 8) = 1;
  v35 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCount2WMedian;
  v266 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCount2WMedian;
  *v35 = 0;
  *(v35 + 8) = 1;
  v36 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCount2WMax;
  v267 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCount2WMax;
  *v36 = 0;
  *(v36 + 8) = 1;
  v37 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__totalNotificationCount2WMedian;
  v268 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__totalNotificationCount2WMedian;
  *v37 = 0;
  *(v37 + 8) = 1;
  v38 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__totalNotificationCount2WMax;
  v269 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__totalNotificationCount2WMax;
  *v38 = 0;
  *(v38 + 8) = 1;
  v39 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedNotificationCount2WMedian;
  v270 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedNotificationCount2WMedian;
  *v39 = 0;
  *(v39 + 8) = 1;
  v40 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedNotificationCount2WMax;
  v271 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedNotificationCount2WMax;
  *v40 = 0;
  *(v40 + 8) = 1;
  v272 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__buyLabel;
  *(v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__buyLabel) = 2;
  v41 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudBuy;
  v273 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudBuy;
  *v41 = 0;
  *(v41 + 8) = 1;
  v274 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openLabelSubStream;
  *(v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openLabelSubStream) = 2;
  v42 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudOpenedSubStream;
  v275 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudOpenedSubStream;
  *(v42 + 8) = 1;
  *v42 = 0;
  v276 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__userTier;
  *(v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__userTier) = 3;
  v277 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__obsoleteTrafficType;
  *(v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__obsoleteTrafficType) = 3;
  swift_beginAccess();
  v43 = *(a1 + 16);
  LOBYTE(v5) = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v43;
  *(v1 + 24) = v5;
  swift_beginAccess();
  LODWORD(v43) = *(a1 + 28);
  v44 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 28) = v43;
  *(v1 + 32) = v44;
  swift_beginAccess();
  v45 = *(a1 + 40);
  v46 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 40) = v45;
  *(v1 + 48) = v46;
  swift_beginAccess();
  v47 = *(a1 + 56);
  v48 = *(a1 + 64);
  swift_beginAccess();
  *(v1 + 56) = v47;
  *(v1 + 64) = v48;
  swift_beginAccess();
  LOBYTE(v47) = *(a1 + 65);
  v49 = v218;
  swift_beginAccess();
  *v49 = v47;
  swift_beginAccess();
  LOBYTE(v47) = *(a1 + 66);
  swift_beginAccess();
  *(v1 + 66) = v47;
  swift_beginAccess();
  LOBYTE(v47) = *(a1 + 67);
  v50 = v219;
  swift_beginAccess();
  *v50 = v47;
  swift_beginAccess();
  v51 = *(a1 + 72);
  LOBYTE(v50) = *(a1 + 80);
  v52 = v220;
  swift_beginAccess();
  *v52 = v51;
  *(v1 + 80) = v50;
  swift_beginAccess();
  v53 = *(a1 + 88);
  LOBYTE(v50) = *(a1 + 96);
  v54 = v221;
  swift_beginAccess();
  *v54 = v53;
  *(v1 + 96) = v50;
  swift_beginAccess();
  v55 = *(a1 + 104);
  LOBYTE(v50) = *(a1 + 112);
  v56 = v222;
  swift_beginAccess();
  *v56 = v55;
  *(v1 + 112) = v50;
  swift_beginAccess();
  v57 = *(a1 + 120);
  LOBYTE(v50) = *(a1 + 128);
  v58 = v223;
  swift_beginAccess();
  *v58 = v57;
  *(v1 + 128) = v50;
  swift_beginAccess();
  v59 = *(a1 + 136);
  LOBYTE(v50) = *(a1 + 144);
  v60 = v224;
  swift_beginAccess();
  *v60 = v59;
  *(v1 + 144) = v50;
  swift_beginAccess();
  v61 = *(a1 + 152);
  LOBYTE(v50) = *(a1 + 160);
  v62 = v225;
  swift_beginAccess();
  *v62 = v61;
  *(v1 + 160) = v50;
  swift_beginAccess();
  v63 = *(a1 + 168);
  LOBYTE(v50) = *(a1 + 176);
  v64 = v226;
  swift_beginAccess();
  *v64 = v63;
  *(v1 + 176) = v50;
  swift_beginAccess();
  v65 = *(a1 + 184);
  LOBYTE(v50) = *(a1 + 192);
  v66 = v227;
  swift_beginAccess();
  *v66 = v65;
  *(v1 + 192) = v50;
  swift_beginAccess();
  v67 = *(a1 + 200);
  LOBYTE(v50) = *(a1 + 208);
  v68 = v228;
  swift_beginAccess();
  *v68 = v67;
  *(v1 + 208) = v50;
  swift_beginAccess();
  v69 = *(a1 + 216);
  LOBYTE(v50) = *(a1 + 224);
  v70 = v229;
  swift_beginAccess();
  *v70 = v69;
  *(v1 + 224) = v50;
  swift_beginAccess();
  v71 = *(a1 + 232);
  LOBYTE(v50) = *(a1 + 240);
  v72 = v230;
  swift_beginAccess();
  *v72 = v71;
  *(v1 + 240) = v50;
  swift_beginAccess();
  v74 = *(a1 + 248);
  v73 = *(a1 + 256);
  swift_beginAccess();
  *(v1 + 248) = v74;
  *(v1 + 256) = v73;
  swift_beginAccess();
  v76 = *(a1 + 264);
  v75 = *(a1 + 272);
  swift_beginAccess();
  *(v1 + 264) = v76;
  *(v1 + 272) = v75;
  swift_beginAccess();
  v78 = *(a1 + 280);
  v77 = *(a1 + 288);
  swift_beginAccess();
  *(v1 + 280) = v78;
  *(v1 + 288) = v77;

  swift_beginAccess();
  v80 = *(a1 + 296);
  v79 = *(a1 + 304);
  swift_beginAccess();
  *(v1 + 296) = v80;
  *(v1 + 304) = v79;

  swift_beginAccess();
  v82 = *(a1 + 312);
  v81 = *(a1 + 320);
  swift_beginAccess();
  *(v1 + 312) = v82;
  *(v1 + 320) = v81;

  swift_beginAccess();
  v84 = *(a1 + 328);
  v83 = *(a1 + 336);
  swift_beginAccess();
  *(v1 + 328) = v84;
  *(v1 + 336) = v83;

  swift_beginAccess();
  v85 = *(a1 + 344);
  LOBYTE(v75) = *(a1 + 352);
  swift_beginAccess();
  *(v1 + 344) = v85;
  *(v1 + 352) = v75;
  v86 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__labelMessage;
  swift_beginAccess();
  v87 = a1 + v86;
  v88 = v235;
  sub_275A7445C(v87, v235);
  v89 = v231;
  swift_beginAccess();
  sub_275A74530(v88, v1 + v89);
  swift_endAccess();
  v90 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__diskStorageCapacityBytes);
  swift_beginAccess();
  v91 = *v90;
  LOBYTE(v90) = *(v90 + 8);
  v92 = v232;
  swift_beginAccess();
  *v92 = v91;
  *(v92 + 8) = v90;
  v93 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__usedDiskCapacityBytes);
  swift_beginAccess();
  v94 = *v93;
  LOBYTE(v93) = *(v93 + 8);
  v95 = v233;
  swift_beginAccess();
  *v95 = v94;
  *(v95 + 8) = v93;
  v96 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedIcloudNotificationRatio2W);
  swift_beginAccess();
  v97 = *v96;
  LOBYTE(v96) = *(v96 + 8);
  v98 = v234;
  swift_beginAccess();
  *v98 = v97;
  *(v98 + 8) = v96;
  v99 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__trafficType;
  swift_beginAccess();
  LOBYTE(v99) = *(a1 + v99);
  v100 = v236;
  swift_beginAccess();
  *(v1 + v100) = v99;
  v101 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__dailyScreenTimeSeconds);
  swift_beginAccess();
  v102 = *v101;
  LOBYTE(v101) = *(v101 + 8);
  v103 = v237;
  swift_beginAccess();
  *v103 = v102;
  *(v103 + 8) = v101;
  v104 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__avgWeeklyScreenTimeSeconds2W);
  swift_beginAccess();
  v105 = *v104;
  LOBYTE(v104) = *(v104 + 8);
  v106 = v238;
  swift_beginAccess();
  *v106 = v105;
  *(v106 + 8) = v104;
  v107 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__daemonVersion);
  swift_beginAccess();
  v108 = *v107;
  LOBYTE(v107) = *(v107 + 8);
  v109 = v239;
  swift_beginAccess();
  *v109 = v108;
  *(v109 + 8) = v107;
  v110 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__obsoleteDayOfWeek);
  swift_beginAccess();
  v112 = *v110;
  v111 = v110[1];
  v113 = v240;
  swift_beginAccess();
  *v113 = v112;
  v113[1] = v111;

  v114 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__deviceModelName);
  swift_beginAccess();
  v116 = *v114;
  v115 = v114[1];
  v117 = v241;
  swift_beginAccess();
  *v117 = v116;
  v117[1] = v115;

  v118 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__dayOfWeek;
  swift_beginAccess();
  LOBYTE(v118) = *(a1 + v118);
  v119 = v242;
  swift_beginAccess();
  *(v1 + v119) = v118;
  v120 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionMajorVersion);
  swift_beginAccess();
  v121 = *v120;
  LOBYTE(v120) = *(v120 + 8);
  v122 = v243;
  swift_beginAccess();
  *v122 = v121;
  *(v122 + 8) = v120;
  v123 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionMinorVersion);
  swift_beginAccess();
  v124 = *v123;
  LOBYTE(v123) = *(v123 + 8);
  v125 = v244;
  swift_beginAccess();
  *v125 = v124;
  *(v125 + 8) = v123;
  v126 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionPatchVersion);
  swift_beginAccess();
  v127 = *v126;
  LOBYTE(v126) = *(v126 + 8);
  v128 = v245;
  swift_beginAccess();
  *v128 = v127;
  *(v128 + 8) = v126;
  v129 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__offsetMins);
  swift_beginAccess();
  v130 = *v129;
  LOBYTE(v129) = *(v129 + 8);
  v131 = v246;
  swift_beginAccess();
  *v131 = v130;
  *(v131 + 8) = v129;
  v132 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__icloudNotificationActionLabel;
  swift_beginAccess();
  LOBYTE(v132) = *(a1 + v132);
  v133 = v247;
  swift_beginAccess();
  *(v1 + v133) = v132;
  v134 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudNotificationOpened);
  swift_beginAccess();
  v135 = *v134;
  LOBYTE(v134) = *(v134 + 8);
  v136 = v248;
  swift_beginAccess();
  *v136 = v135;
  *(v136 + 8) = v134;
  v137 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCountSameSlot);
  swift_beginAccess();
  v138 = *v137;
  LOBYTE(v137) = *(v137 + 8);
  v139 = v249;
  swift_beginAccess();
  *v139 = v138;
  *(v139 + 8) = v137;
  v140 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__cameraLaunchCountSameSlot);
  swift_beginAccess();
  v141 = *v140;
  LOBYTE(v140) = *(v140 + 8);
  v142 = v250;
  swift_beginAccess();
  *v142 = v141;
  *(v142 + 8) = v140;
  v143 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCountSameSlot);
  swift_beginAccess();
  v144 = *v143;
  LOBYTE(v143) = *(v143 + 8);
  v145 = v251;
  swift_beginAccess();
  *v145 = v144;
  *(v145 + 8) = v143;
  v146 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__filesLaunchCountSameSlot);
  swift_beginAccess();
  v147 = *v146;
  LOBYTE(v146) = *(v146 + 8);
  v148 = v252;
  swift_beginAccess();
  *v148 = v147;
  *(v148 + 8) = v146;
  v149 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isSleepModeOnSameSlot;
  swift_beginAccess();
  LOBYTE(v149) = *(a1 + v149);
  v150 = v253;
  swift_beginAccess();
  *(v1 + v150) = v149;
  v151 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDoNotDisturbOnSameSlot;
  swift_beginAccess();
  LOBYTE(v151) = *(a1 + v151);
  v152 = v254;
  swift_beginAccess();
  *(v1 + v152) = v151;
  v153 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDrivingModeOnSameSlot;
  swift_beginAccess();
  LOBYTE(v153) = *(a1 + v153);
  v154 = v255;
  swift_beginAccess();
  *(v1 + v154) = v153;
  v155 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__numNotificationsSameSlot);
  swift_beginAccess();
  v156 = *v155;
  LOBYTE(v155) = *(v155 + 8);
  v157 = v256;
  swift_beginAccess();
  *v157 = v156;
  *(v157 + 8) = v155;
  v158 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__numOpenedNotificationsSameSlot);
  swift_beginAccess();
  v159 = *v158;
  LOBYTE(v158) = *(v158 + 8);
  v160 = v257;
  swift_beginAccess();
  *v160 = v159;
  *(v160 + 8) = v158;
  v161 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastCameraAppLaunch1W);
  swift_beginAccess();
  v162 = *v161;
  LOBYTE(v161) = *(v161 + 8);
  v163 = v258;
  swift_beginAccess();
  *v163 = v162;
  *(v163 + 8) = v161;
  v164 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastPhotosAppLaunch1W);
  swift_beginAccess();
  v165 = *v164;
  LOBYTE(v164) = *(v164 + 8);
  v166 = v259;
  swift_beginAccess();
  *v166 = v165;
  *(v166 + 8) = v164;
  v167 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastFilesAppLaunch1W);
  swift_beginAccess();
  v168 = *v167;
  LOBYTE(v167) = *(v167 + 8);
  v169 = v260;
  swift_beginAccess();
  *v169 = v168;
  *(v169 + 8) = v167;
  v170 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isSleepModeOnCount2W);
  swift_beginAccess();
  v171 = *v170;
  LOBYTE(v170) = *(v170 + 8);
  v172 = v261;
  swift_beginAccess();
  *v172 = v171;
  *(v172 + 8) = v170;
  v173 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDoNotDisturbOnCount2W);
  swift_beginAccess();
  v174 = *v173;
  LOBYTE(v173) = *(v173 + 8);
  v175 = v262;
  swift_beginAccess();
  *v175 = v174;
  *(v175 + 8) = v173;
  v176 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDrivingModeOnCount2W);
  swift_beginAccess();
  v177 = *v176;
  LOBYTE(v176) = *(v176 + 8);
  v178 = v263;
  swift_beginAccess();
  *v178 = v177;
  *(v178 + 8) = v176;
  v179 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCount2WMedian);
  swift_beginAccess();
  v180 = *v179;
  LOBYTE(v179) = *(v179 + 8);
  v181 = v264;
  swift_beginAccess();
  *v181 = v180;
  *(v181 + 8) = v179;
  v182 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCount2WMax);
  swift_beginAccess();
  v183 = *v182;
  LOBYTE(v182) = *(v182 + 8);
  v184 = v265;
  swift_beginAccess();
  *v184 = v183;
  *(v184 + 8) = v182;
  v185 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCount2WMedian);
  swift_beginAccess();
  v186 = *v185;
  LOBYTE(v185) = *(v185 + 8);
  v187 = v266;
  swift_beginAccess();
  *v187 = v186;
  *(v187 + 8) = v185;
  v188 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCount2WMax);
  swift_beginAccess();
  v189 = *v188;
  LOBYTE(v188) = *(v188 + 8);
  v190 = v267;
  swift_beginAccess();
  *v190 = v189;
  *(v190 + 8) = v188;
  v191 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__totalNotificationCount2WMedian);
  swift_beginAccess();
  v192 = *v191;
  LOBYTE(v191) = *(v191 + 8);
  v193 = v268;
  swift_beginAccess();
  *v193 = v192;
  *(v193 + 8) = v191;
  v194 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__totalNotificationCount2WMax);
  swift_beginAccess();
  v195 = *v194;
  LOBYTE(v194) = *(v194 + 8);
  v196 = v269;
  swift_beginAccess();
  *v196 = v195;
  *(v196 + 8) = v194;
  v197 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedNotificationCount2WMedian);
  swift_beginAccess();
  v198 = *v197;
  LOBYTE(v197) = *(v197 + 8);
  v199 = v270;
  swift_beginAccess();
  *v199 = v198;
  *(v199 + 8) = v197;
  v200 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedNotificationCount2WMax);
  swift_beginAccess();
  v201 = *v200;
  LOBYTE(v200) = *(v200 + 8);
  v202 = v271;
  swift_beginAccess();
  *v202 = v201;
  *(v202 + 8) = v200;
  v203 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__buyLabel;
  swift_beginAccess();
  LOBYTE(v203) = *(a1 + v203);
  v204 = v272;
  swift_beginAccess();
  *(v1 + v204) = v203;
  v205 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudBuy);
  swift_beginAccess();
  v206 = *v205;
  LOBYTE(v205) = *(v205 + 8);
  v207 = v273;
  swift_beginAccess();
  *v207 = v206;
  *(v207 + 8) = v205;
  v208 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openLabelSubStream;
  swift_beginAccess();
  LOBYTE(v208) = *(a1 + v208);
  v209 = v274;
  swift_beginAccess();
  *(v1 + v209) = v208;
  v210 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudOpenedSubStream);
  swift_beginAccess();
  v211 = *v210;
  LOBYTE(v210) = *(v210 + 8);
  v212 = v275;
  swift_beginAccess();
  *v212 = v211;
  *(v212 + 8) = v210;
  v213 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__userTier;
  swift_beginAccess();
  LOBYTE(v213) = *(a1 + v213);
  v214 = v276;
  swift_beginAccess();
  *(v1 + v214) = v213;
  v215 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__obsoleteTrafficType;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v215);
  v216 = v277;
  swift_beginAccess();
  *(v1 + v216) = a1;
  return v1;
}

uint64_t sub_275A7445C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24720, &qword_275AE7EA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275A744CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISOPB_SubscriptionLabelMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_275A74530(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24720, &qword_275AE7EA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_275A745A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISOPB_SubscriptionLabelMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275A74604(uint64_t a1)
{
  v2 = type metadata accessor for ISOPB_SubscriptionLabelMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t _s31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageV9DayOfWeekO8rawValueAESgSi_tcfC_0(unint64_t result)
{
  if (result >= 8)
  {
    return 8;
  }

  return result;
}

uint64_t sub_275A74670(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_275A746BC()
{
  result = qword_280A248A8;
  if (!qword_280A248A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A248A8);
  }

  return result;
}

unint64_t sub_275A74714()
{
  result = qword_280A248B0;
  if (!qword_280A248B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A248B0);
  }

  return result;
}